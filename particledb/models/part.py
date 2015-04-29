from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship, backref

from . import Base

class Part(Base):
    """ Represents a specific part.
    """
    __tablename__ = 'parts'

    id = Column('id', Integer, primary_key=True)
    mpn = Column('mpn', String(45), nullable=False)
    description = Column('description', String(45))
    manufacturers_id  = Column('manufacturers_id', Integer, ForeignKey('manufacturers.id'))