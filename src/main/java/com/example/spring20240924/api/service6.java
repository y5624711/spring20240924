package com.example.spring20240924.api;

import com.example.spring20240924.dto.a6.Customer;
import com.example.spring20240924.dto.a6.Supplier;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class service6 {
    private final mapper6 mapper;

    public Customer getCustomer(Integer customerId) {
        return mapper.selectById(customerId);
    }

    public Supplier getSupplier(Integer supplierId) {

        return mapper.selectSupplierById(supplierId);
    }
}