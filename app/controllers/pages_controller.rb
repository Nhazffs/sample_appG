class PagesController < ApplicationController
  def home
    @titre = "Accueil"
  end

  def contact
    @titre = "Contact"
  end

  def about
    @titre = "À Propos"
  end

   def help
    @titre = "Besoin d'aide ?"
  end
  
  def signup
    @titre = "Inscription"
  end

  def signin
    @titre = "Connexion"
  end
end
