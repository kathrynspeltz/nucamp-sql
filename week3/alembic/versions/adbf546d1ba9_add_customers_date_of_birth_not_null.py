"""add customers date_of_birth not null

Revision ID: adbf546d1ba9
Revises: d270ee772ac7
Create Date: 2023-06-07 07:26:48.477393

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'adbf546d1ba9'
down_revision = 'd270ee772ac7'
branch_labels = None
depends_on = None


def upgrade():
    op.execute(
        """
        ALTER TABLE customers
        RENAME COLUMN date_of_birth TO dob;
        """
    )

def downgrade():
    op.execute(
        """
        ALTER TABLE customers
        RENAME COLUMN dob TO date_of_birth;
        """
    )
