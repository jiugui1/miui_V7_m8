.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "MSG_INVALIDATE"

    goto :goto_0

    :pswitch_2
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_0

    :pswitch_3
    const-string v0, "MSG_DIE"

    goto :goto_0

    :pswitch_4
    const-string v0, "MSG_RESIZED"

    goto :goto_0

    :pswitch_5
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_0

    :pswitch_6
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_0

    :pswitch_7
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_0

    :pswitch_8
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_0

    :pswitch_9
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    :pswitch_a
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_0

    :pswitch_b
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_0

    :pswitch_c
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_0

    :pswitch_d
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    :pswitch_e
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_0

    :pswitch_f
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    :pswitch_10
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    :pswitch_11
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_0

    :pswitch_12
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_0

    :pswitch_13
    const-string v0, "MSG_DISPATCH_SCREEN_STATE"

    goto :goto_0

    :pswitch_14
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_0

    :pswitch_15
    const-string v0, "MSG_DISPATCH_DONE_ANIMATING"

    goto :goto_0

    :pswitch_16
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_0

    :pswitch_17
    const-string v0, "MSG_FLUSH_LAYER_UPDATES"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v17, 0x0

    .local v17, "startTime":J
    # getter for: Landroid/view/ViewRootImpl;->PERFORMANCE_LOG_ENABLED:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    # getter for: Landroid/view/ViewRootImpl;->PERFORMANCE_LOG_ENABLED:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewRootHandler:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v17

    # invokes: Landroid/view/ViewRootImpl;->logHeavyAction(Ljava/lang/String;J)V
    invoke-static {v3, v4, v0, v1}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;Ljava/lang/String;J)V

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/view/View$AttachInfo$InvalidateInfo;

    .local v15, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v3, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v4, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v5, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v6, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v7, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    invoke-virtual {v15}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_0

    .end local v15    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_4
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/Configuration;

    .local v9, "config":Landroid/content/res/Configuration;
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    :cond_5
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_HTC:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$300()Z

    move-result v3

    if-nez v3, :cond_8

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/View;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    :cond_8
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    # invokes: Landroid/view/ViewRootImpl;->getShortTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v5, v6}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->getShortConfigurationString(Landroid/content/res/Configuration;)Ljava/lang/String;
    invoke-static {v5, v9}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v9    # "config":Landroid/content/res/Configuration;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v20

    .local v20, "w":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    .local v12, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .local v16, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .local v19, "t":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v16

    iput v0, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v4, v16, v20

    iput v4, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v19

    iput v0, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v4, v19, v12

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/View;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .end local v12    # "h":I
    .end local v16    # "l":I
    .end local v19    # "t":I
    .end local v20    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_f

    const/4 v13, 0x1

    .local v13, "hasWindowFocus":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v3, v13}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;Z)V

    if-eqz v13, :cond_a

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_10

    const/4 v14, 0x1

    .local v14, "inTouchMode":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v3, v14}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v5, v5, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;)Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "inTouchMode":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_c

    if-eqz v13, :cond_b

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v3}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v13}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, v13}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    :cond_c
    if-eqz v13, :cond_e

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v6, :cond_12

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "hasWindowFocus":Z
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_4

    .restart local v13    # "hasWindowFocus":Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_5

    .restart local v14    # "inTouchMode":Z
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v3, "ViewRootImpl"

    const-string v4, "OutOfResourcesException locking surface"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "ViewRootImpl"

    const-string v4, "No processes killed for memory; killing self"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_11
    :goto_7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .end local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v14    # "inTouchMode":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_6

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/InputEvent;

    .local v11, "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v11, v4, v5, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .end local v11    # "event":Landroid/view/InputEvent;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/KeyEvent;

    .local v11, "event":Landroid/view/KeyEvent;
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_13

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    invoke-static {v11, v3}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v11

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v11, v4, v5, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .end local v11    # "event":Landroid/view/KeyEvent;
    :pswitch_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/DragEvent;

    .local v11, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v3, v11, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v3, v11}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .end local v11    # "event":Landroid/view/DragEvent;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/Configuration;

    .restart local v9    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v3, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .end local v9    # "config":Landroid/content/res/Configuration;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_15

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->handleScreenStateChange(Z)V

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x0

    goto :goto_8

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->flushHardwareLayerUpdates()V

    goto/16 :goto_0

    .restart local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v13    # "hasWindowFocus":Z
    .restart local v14    # "inTouchMode":Z
    :catch_1
    move-exception v3

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_17
    .end packed-switch
.end method