package com.test.dao;

import java.util.List;

import com.test.dto.ParkingDTO;

public interface ParkingDAO {

	public List<ParkingDTO> parkingList() throws Exception;
	public ParkingDTO parkingDetail(int parkno) throws Exception;
	public void carIn(ParkingDTO dto) throws Exception;
	public void carOut(int parkno) throws Exception;

	public void carOut2(ParkingDTO dto) throws Exception;
	
	//
	public void carOut3(ParkingDTO dto) throws Exception;
	public void carOut4(ParkingDTO dto) throws Exception;
	public void carOut5(ParkingDTO dto) throws Exception;
	
	
	
	public void insertUsing(ParkingDTO dto) throws Exception;
	public void insertMoney(ParkingDTO dto) throws Exception;
	public void paid(ParkingDTO dto) throws Exception;
	
	
}
