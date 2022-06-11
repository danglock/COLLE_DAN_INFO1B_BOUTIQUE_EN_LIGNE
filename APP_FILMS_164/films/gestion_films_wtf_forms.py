"""Gestion des formulaires avec WTF pour les films
Fichier : gestion_films_wtf_forms.py
Auteur : OM 2022.04.11

"""
from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired
from wtforms.validators import Regexp


class FormWTFAddFilm(FlaskForm):
    """
        Dans le formulaire "genres_ajouter_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_film_regexp = ""
    nom_film_add_wtf = StringField("Nom ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                               Regexp(nom_film_regexp,
                                                                      message="Pas de chiffres, de caractères "
                                                                              "spéciaux, "
                                                                              "d'espace à double, de double "
                                                                              "apostrophe, de double trait union")
                                                               ])
    type_description_add_wtf = StringField("Description ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                               Regexp(nom_film_regexp,
                                                                      message="Pas de chiffres, de caractères "
                                                                              "spéciaux, "
                                                                              "d'espace à double, de double "
                                                                              "apostrophe, de double trait union")
                                                               ])

    submit = SubmitField("Enregistrer Type")


class FormWTFAddProduit(FlaskForm):
    nom_film_regexp = ""
    nom_produit_add_wtf = StringField("Nom ", validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                          Regexp(nom_film_regexp,
                                                                 message="Pas de chiffres, de caractères "
                                                                         "spéciaux, "
                                                                         "d'espace à double, de double "
                                                                         "apostrophe, de double trait union")
                                                          ])
    prix_produit_add_wtf = StringField("Prix ")

    description_produit_add_wtf = StringField("Description ",
                                              validators=[Length(min=2, max=2000, message="min 2 max 20"),
                                                          Regexp(nom_film_regexp,
                                                                 message="Pas de chiffres, de caractères "
                                                                         "spéciaux, "
                                                                         "d'espace à double, de double "
                                                                         "apostrophe, de double trait union")
                                                          ])
    quantite_produit_add_wtf = StringField("Quantité ")

    submit = SubmitField("Enregistrer")






class FormWTFUpdateFilm(FlaskForm):
    """
        Dans le formulaire "film_update_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_film_update_regexp = ""
    nom_film_update_wtf = StringField("Nom")
    duree_film_update_regexp = ""
    duree_film_update_wtf = StringField("Description")

    submit = SubmitField("Update Type")




class FormWTFUpdateProduit(FlaskForm):
    """
        Dans le formulaire "film_update_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_film_update_regexp = ""
    nom_film_update_wtf = StringField("Nom")
    duree_film_update_regexp = ""
    duree_film_update_wtf = StringField("Prix")
    description_produit_update_regexp = ""
    description_produit_update_wtf = StringField("Description")
    quantite_produit_update_regexp = ""
    quantite_produit_update_wtf = StringField("Quantité")

    submit = SubmitField("Update Produit")

class FormWTFDeleteFilm(FlaskForm):
    """
        Dans le formulaire "film_delete_wtf.html"

        nom_film_delete_wtf : Champ qui reçoit la valeur du film, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "film".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_film".
    """
    nom_film_delete_wtf = StringField("Effacer ce type")
    submit_btn_del_film = SubmitField("Effacer type")
    submit_btn_conf_del_film = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")


class FormWTFDeleteProduit(FlaskForm):
    """
        Dans le formulaire "film_delete_wtf.html"

        nom_film_delete_wtf : Champ qui reçoit la valeur du film, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "film".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_film".
    """
    nom_film_delete_wtf = StringField("Effacer ce produit")
    submit_btn_del_film = SubmitField("Effacer produit")
    submit_btn_conf_del_film = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")