package com.netcracker.studPract.clientWeb.ApiServiceConverters;

import com.netcracker.studPract.clientWeb.ChatUserUtils.Client;
import com.netcracker.studPract.clientWeb.UserApiModel.ClientViewModel;
import org.springframework.stereotype.Component;

import java.util.HashMap;

@Component
public class ClientsConverter {


    public HashMap<String,ClientViewModel> convertClientsToViewModel(HashMap<String, Client> clientHashMap){

        HashMap<String,ClientViewModel> clientViewModelHashMap = new HashMap<>();

        for (Client client : clientHashMap.values()) {
            ClientViewModel clientViewModel = new ClientViewModel();
            clientViewModel.setName(client.getName());
            clientViewModel.setRole(client.getRole());
            clientViewModel.setSessionId(client.getSession().getId());
            clientViewModelHashMap.put(clientViewModel.getSessionId(),clientViewModel);
        }
        return clientViewModelHashMap;
    }
}
