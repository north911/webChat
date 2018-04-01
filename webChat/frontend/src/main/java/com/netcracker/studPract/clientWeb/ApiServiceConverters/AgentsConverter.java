package com.netcracker.studPract.clientWeb.ApiServiceConverters;


import com.netcracker.studPract.clientWeb.ChatUserUtils.Agent;
import com.netcracker.studPract.clientWeb.UserApiModel.AgentViewModel;
import org.springframework.stereotype.Component;

import java.util.HashMap;

@Component
public class AgentsConverter {
    public HashMap<String,AgentViewModel> convertAgents(HashMap<String,Agent> agentHashMap){
        HashMap<String,AgentViewModel> agentViewModelHashMap = new HashMap<>();
        for (Agent agent : agentHashMap.values()) {
            AgentViewModel agentViewModel = new AgentViewModel();
            agentViewModel.setFreeSlots(agent.getFreeSlots());
            agentViewModel.setIdSession(agent.getSession().getId());
            agentViewModel.setName(agent.getName());
            agentViewModel.setNumberOfSlots(agent.getNumberOfSlots());
            agentViewModel.setRole(agent.getRole());
            agentViewModelHashMap.put(agent.getSession().getId(),agentViewModel);
        }
        return agentViewModelHashMap;
    }
}
