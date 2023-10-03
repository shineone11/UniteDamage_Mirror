from flask import (
    Blueprint, flash, g, redirect, render_template, request, url_for
)
from werkzeug.exceptions import abort

from UniteCalc.auth import login_required
from UniteCalc.db import get_db

bp = Blueprint('blog', __name__, url_prefix='/pokemon')

@bp.route('/')
def index():
    db = get_db()
    pokemons = db.execute(
        'SELECT distinct pokename'
        ' FROM M_pokemon'
        ' ORDER BY pokename DESC'
    ).fetchall()
    print(pokemons)
    return render_template('pokemon/index.html', pokemons=pokemons)

