import React from 'react';
import { Link } from "react-router-dom";
import './HouseCard.css';

function HouseCard({ house }) {
    const {id, image, name, location, description, per_night} = house

    return (
        <div className='outer-div'>
            <div className='house-card' style={{backgroundImage: `url(${image})`}}>
                <div className='button-div'>
                    <div className='content'>
                        <Link to={`/availablehouses/${id}`}>
                            <button className='btn'>Show Details</button>
                        </Link>
                    </div>
                </div>
                <div className='information-container'>
                    <div className='info-div'>
                        <h2 className='title'>{name}</h2>
                        <p className='subtitle'>{location}</p>
                        <div className='more-information'>
                            <div className='ratings-and-price-container'>
                                <div className='box ratings'>
                                </div>
                                <div className='box price'>
                                    <p>${per_night}/per night</p>
                                </div>
                            </div>
                            <p className='description'>{description}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default HouseCard;