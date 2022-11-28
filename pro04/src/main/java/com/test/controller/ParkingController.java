package com.test.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.test.dto.ParkingDTO;
import com.test.service.ParkingService;

@Controller
@RequestMapping("/parking/*")
public class ParkingController {
	
	@Autowired
	ParkingService parkingService;

	@GetMapping("list.do")	//board.list.do
	public String parkingList(Model model) throws Exception{
		List<ParkingDTO> parkingList = new ArrayList<ParkingDTO>();
		parkingList = parkingService.parkingList();
		model.addAttribute("parkingList", parkingList);
		
		return "parking/parkingList";
		
	}
	
	@GetMapping("detail.do")	
	public String parkingDetail(@RequestParam("parkno") int parkno, Model model) throws Exception {
		ParkingDTO dto = parkingService.parkingDetail(parkno);
		model.addAttribute("dto", dto);
		return "parking/parkingDetail";
	}
	
	@GetMapping("insert.do")
	public String insertForm(HttpServletRequest request, Model model) throws Exception {
		return "parking/carIn";
	}
	
	@PostMapping("insert.do")
	public String carIn(HttpServletRequest request, Model model) throws Exception {
		ParkingDTO dto = new ParkingDTO();
		dto.setCarnum(request.getParameter("carnum"));
		parkingService.carIn(dto);
		
		return "redirect:list.do";
	}
	
	@GetMapping("delete.do")
	public String carOut(HttpServletRequest request, Model model) throws Exception {
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		parkingService.carOut(parkno);
		
		return "redirect:list.do";
	}
	
}