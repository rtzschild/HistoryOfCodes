import React, { useEffect, useState } from 'react';

const IoTDashboard = () => {
  const [sensorData, setSensorData] = useState({ temperature: 0, humidity: 0 });

  // Simulate receiving sensor data updates every 2 seconds
  useEffect(() => {
    const interval = setInterval(() => {
      setSensorData({
        temperature: (Math.random() * 40).toFixed(1), // Temperature between 0-40°C
        humidity: (Math.random() * 100).toFixed(1)     // Humidity between 0-100%
      });
    }, 2000);

    return () => clearInterval(interval);
  }, []);

  return (
    <div style={{ padding: '20px', fontFamily: 'Arial, sans-serif' }}>
      <h1>IoT Dashboard</h1>
      <div style={{ border: '1px solid #ccc', borderRadius: '8px', padding: '20px', maxWidth: '400px', margin: 'auto' }}>
        <h2>Sensor Data</h2>
        <p>Temperature: {sensorData.temperature} °C</p>
        <p>Humidity: {sensorData.humidity} %</p>
      </div>
    </div>
  );
};

export default IoTDashboard;
