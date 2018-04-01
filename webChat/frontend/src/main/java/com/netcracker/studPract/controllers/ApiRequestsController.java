package com.netcracker.studPract.controllers;

import com.netcracker.studPract.clientWeb.ApiServiceConverters.AgentsConverter;
import com.netcracker.studPract.clientWeb.ApiServiceConverters.ClientsConverter;
import com.netcracker.studPract.clientWeb.ApiUtils.AgentUtils;
import com.netcracker.studPract.clientWeb.ApiUtils.ClientUtils;
import com.netcracker.studPract.clientWeb.ChatUserUtils.UserRegistrator;
import com.netcracker.studPract.clientWeb.UserApiModel.AgentViewModel;
import com.netcracker.studPract.clientWeb.UserApiModel.ClientViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;


@RestController
public class ApiRequestsController {

    @Autowired
    AgentsConverter agentsConverter;

    @Autowired
    ClientsConverter clientsConverter;

    @Autowired
    AgentUtils agentUtils;

    @Autowired
    ClientUtils clientUtils;

    private UserRegistrator userRegistrator = UserRegistrator.getInstance();

    @RequestMapping(value = "/getAllAgents", method = RequestMethod.GET)
    @ResponseBody
    public HashMap<String, AgentViewModel> getAllAgents() {
        return agentsConverter.convertAgents(userRegistrator.getAgents());
    }

    @RequestMapping(value = "/getAllClients", method = RequestMethod.GET)
    @ResponseBody
    public HashMap<String, ClientViewModel> getAllClients() {
        return clientsConverter.convertClientsToViewModel(userRegistrator.getClients());
    }


    @RequestMapping(value = "/getFreeAgents", method = RequestMethod.GET)
    @ResponseBody
    public HashMap<String, AgentViewModel> getFreeAgents() {
        return agentsConverter.convertAgents(agentUtils.findFreeAgents(userRegistrator.getAgents()));
    }

    @RequestMapping(value = "/getAgent/{id}", method = RequestMethod.GET)
    @ResponseBody
    public AgentViewModel getAgent(@PathVariable String id) {
        return agentUtils.findAgentBySessionId(id, userRegistrator.getAgents());
    }

    @RequestMapping(value = "/countFreeAgents", method = RequestMethod.GET)
    @ResponseBody
    public int countFreeAgents() {
        return agentUtils.countFreeAgents(userRegistrator.getAgents());
    }

    @RequestMapping(value = "/getFreeClients", method = RequestMethod.GET)
    @ResponseBody
    public HashMap<String, ClientViewModel> getFreeClients() {

        return clientsConverter.convertClientsToViewModel(clientUtils.findFreeClients(userRegistrator.getClients()));
    }

    @RequestMapping(value = "/clien/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ClientViewModel getClient(@PathVariable String id) {
        return clientUtils.findClientByIdSession(id, userRegistrator.getClients());
    }



}
