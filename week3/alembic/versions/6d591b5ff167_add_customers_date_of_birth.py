"""add customers date_of_birth

Revision ID: 6d591b5ff167
Revises: b509be9a4909
Create Date: 2023-06-07 06:53:01.628107

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '6d591b5ff167'
down_revision = 'b509be9a4909'
branch_labels = None
depends_on = None


def upgrade():
    op.execute(
        """
        ALTER TABLE customers
        ADD COLUMN date_of_birth TIMESTAMP;
        """
    )


def downgrade():
    op.execute(
        """
        ALTER TABLE customers
        DROP COLUMN date_of_birth;
        """
    )
