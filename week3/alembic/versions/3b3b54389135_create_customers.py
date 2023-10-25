"""create customers

Revision ID: 3b3b54389135
Revises: 
Create Date: 2023-10-23 12:10:25.412289

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '3b3b54389135'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    op.execute(
        """
        CREATE TABLE customers(
            id SERIAL PRIMARY KEY,
            name TEXT NOT NULL
        );
        """
    )


def downgrade():
    op.execute(
        """
        DROP TABLE customers;
        """
    )
