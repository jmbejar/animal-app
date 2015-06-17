require 'test_helper'

class MainFlowTest < ActionDispatch::IntegrationTest
  test "visit the main page" do
    get "/animals"

    assert_select "a", "Vertebrados"
    assert_select "a", "Invertebrados"
  end

  test "browse classes and subclasses" do
    get "/animals/vertebrados"

    assert_select "a[href='/animals/vertebrados/mamiferos']", "Mamiferos"
    assert_select "a[href='/animals/vertebrados/aves']", "Aves"
    assert_select "a[href='/animals']", "Main Menu"

    get "/animals/vertebrados/mamiferos"

    assert_select "a[href='/animals/vertebrados/mamiferos/carnivoros']", "Carnivoros"
    assert_select "a[href='/animals/vertebrados/mamiferos/herbivoros']", "Herbivoros"
    assert_select "a[href='/animals/vertebrados']", "Vertebrados"

    get "/animals/vertebrados/mamiferos/carnivoros"

    assert_select "a[href='/animals/vertebrados/mamiferos/carnivoros/gato']", "Gato"
    assert_select "a[href='/animals/vertebrados/mamiferos/carnivoros/lince']", "Lince"
    assert_select "a[href='/animals/vertebrados/mamiferos/carnivoros/lobo']", "Lobo"
    assert_select "a[href='/animals/vertebrados/mamiferos']", "Mamiferos"

    get "/animals/vertebrados/mamiferos/herbivoros"

    assert_select "a[href='/animals/vertebrados/mamiferos/herbivoros/girafa']", "Girafa"
    assert_select "a[href='/animals/vertebrados/mamiferos/herbivoros/%C3%B1u']", "ñu"
    assert_select "a[href='/animals/vertebrados/mamiferos']", "Mamiferos"

    get "/animals/vertebrados/aves"

    assert_select "a[href='/animals/vertebrados/aves/gallina']", "Gallina"
    assert_select "a[href='/animals/vertebrados/aves/paloma']", "Paloma"
    assert_select "a[href='/animals/vertebrados']", "Vertebrados"
  end

  test "visit species pages" do
    get "/animals/vertebrados/mamiferos/carnivoros/gato"

    assert_select "p.lead", "Gato"
    assert_select "img[src*='assets/gato']"
    assert_select "a[href='/animals/vertebrados/mamiferos/carnivoros']", "Carnivoros"

    get "/animals/vertebrados/aves/paloma"

    assert_select "p.lead", "Paloma"
    assert_select "img[src*='assets/paloma']"
    assert_select "a[href='/animals/vertebrados/aves']", "Aves"
  end
end
