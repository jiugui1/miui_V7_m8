.class Landroid/net/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 3811
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const v8, 0x20010

    .line 3814
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3817
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->startDhcp()V

    .line 3845
    :goto_0
    return-void

    .line 3820
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->stopDhcp()V

    .line 3821
    new-instance v1, Landroid/net/DhcpResults;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/net/DhcpResults;-><init>(Landroid/net/LinkProperties;)V

    .line 3823
    .local v1, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v3, Landroid/net/InterfaceConfiguration;

    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 3824
    .local v3, "ifcg":Landroid/net/InterfaceConfiguration;
    iget-object v5, v1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3826
    .local v0, "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3827
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Static IP lacks address"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$21300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3828
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3830
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    invoke-virtual {v3, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3831
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3833
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 3834
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Static IP configuration succeeded"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$21400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3835
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2000f

    invoke-virtual {v5, v6, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3836
    :catch_0
    move-exception v4

    .line 3837
    .local v4, "re":Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Static IP configuration failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$21500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3838
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 3839
    .end local v4    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3840
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Static IP configuration failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3841
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3848
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3849
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3870
    const/4 v0, 0x0

    .line 3872
    :goto_0
    return v0

    .line 3851
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpResults;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$19600(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    .line 3852
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$19700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3872
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3855
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$20000(Landroid/net/wifi/WifiStateMachine;)V

    .line 3856
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3859
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$22000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 3863
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$22100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 3867
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$22200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 3849
    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20047 -> :sswitch_4
        0x2004d -> :sswitch_3
        0x25007 -> :sswitch_2
    .end sparse-switch
.end method
