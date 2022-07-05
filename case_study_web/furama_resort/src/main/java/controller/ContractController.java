package controller;

import model.*;
import service.*;
import service.impl.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContractController", urlPatterns = "/contract")
public class ContractController extends HttpServlet {
    private final ContractService contractService = new ContractServiceImpl();
    private final EmployeeService employeeService = new EmployeeServiceImpl();
    private final CustomerService customerService = new CustomerServiceImpl();
    private final FacilityService facilityService = new FacilityServiceImpl();
    private final ContractDetailService contractDetailService = new ContractDetailServiceImpl();
    private final AttachFacilityService attachFacilityService = new AttachFacilityServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "show":
                showAttachFacilityContract(request, response);
                break;
            default:
                contractList(request, response);
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            default:
                contractList(request, response);
                break;
        }
    }

    private void showAttachFacilityContract(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idContract"));
        List<AttachFacility> attachFacilityListContract = attachFacilityService.selectAllAttachFacilityContract(id);

        request.setAttribute("attachFacilityListContract", attachFacilityListContract);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/contract/list.jsp");
        requestDispatcher.forward(request, response);

    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
    }

    private void contractList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contract> contractList = contractService.selectAllContract();
        request.setAttribute("contractList", contractList);

        List<Employee> employeeList = employeeService.selectAllEmployee();
        request.setAttribute("employeeList", employeeList);

        List<Customer> customerList = customerService.selectAllCustomer();
        request.setAttribute("customerList", customerList);

        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("facilityList", facilityList);

        List<ContractDetail> contractDetailList = contractDetailService.selectAllContractDetail();
        request.setAttribute("contractDetailList", contractDetailList);

        List<AttachFacility> attachFacilityList = attachFacilityService.selectAllAttachFacility();
        request.setAttribute("attachFacilityList", attachFacilityList);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/contract/list.jsp");
        requestDispatcher.forward(request, response);
    }
}
