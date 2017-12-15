package work.service;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import work.dao.AddressDao;
import work.entity.Address;

@Service
public class AddressService {
	@Resource
	private AddressDao ad;
	
	public Address save(Address a){
		return this.ad.save(a);
	}
	public Address findByAddress(String address){
		return this.ad.findByAddress(address);
	}
	public Address findByName(String name){
		return this.findByName(name);
	}
	public Address findByPhone(String phone){
		return this.findByPhone(phone);
	}
}
