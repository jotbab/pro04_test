package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.ParkingDAO;
import com.test.dto.ParkingDTO;

@Service
public class ParkingServiceImpl implements ParkingService {

	@Autowired
	ParkingDAO parkingDAO;
	
	@Override
	public List<ParkingDTO> parkingList() throws Exception {
		return parkingDAO.parkingList();
	}

	@Override
	public ParkingDTO parkingDetail(int parkno) throws Exception {
		return parkingDAO.parkingDetail(parkno);
	}

	@Override
	public void carIn(ParkingDTO dto) throws Exception {
		parkingDAO.carIn(dto);
	}

	@Override
	public void carOut(int parkno) throws Exception {
		parkingDAO.carOut(parkno);
	}
	
	@Override
	public void carOut2(ParkingDTO dto) throws Exception {
		parkingDAO.carOut2(dto);
	}
	
	@Override
	public void carOut3(ParkingDTO dto) throws Exception {
		parkingDAO.carOut3(dto);
	}

	@Override
	public void carOut4(ParkingDTO dto) throws Exception {
		parkingDAO.carOut4(dto);
	}

	@Override
	public void carOut5(ParkingDTO dto) throws Exception {
		parkingDAO.carOut5(dto);
		
	}
	
	
	
	
	  
	 
	 

	
}
