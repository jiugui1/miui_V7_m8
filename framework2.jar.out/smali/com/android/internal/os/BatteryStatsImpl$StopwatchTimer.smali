.class public final Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StopwatchTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field mInList:Z

.field mNesting:I

.field mTimeout:J

.field final mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field mUpdateTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1107
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .local p4, "unpluggables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-direct {p0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;)V

    .line 1108
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1109
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1110
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p5, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .local p4, "unpluggables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 1100
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1101
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1102
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1103
    return-void
.end method

.method private checkTimerPoolSize()I
    .locals 3

    .prologue
    .line 1218
    const/4 v0, 0x1

    .line 1219
    .local v0, "tmpSize":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1222
    if-gtz v0, :cond_0

    .line 1223
    const-string v1, "BatteryStatsImpl"

    const-string v2, "Timer Pool size <=0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/4 v0, 0x1

    .line 1227
    :cond_0
    return v0
.end method

.method private static refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p1, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v6, v9, v11

    .line 1205
    .local v6, "realtime":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    .line 1206
    .local v1, "batteryRealtime":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1207
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 1208
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1209
    .local v8, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v3, v1, v9

    .line 1210
    .local v3, "heldTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_0

    .line 1211
    iget-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    int-to-long v11, v0

    div-long v11, v3, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1213
    :cond_0
    iput-wide v1, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1207
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1215
    .end local v3    # "heldTime":J
    .end local v8    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    return-void
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .param p1, "curBatteryRealtime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 1232
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1233
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    add-long p1, v2, v4

    .line 1235
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v4, :cond_1

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v0, p1, v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->checkTimerPoolSize()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v0, v4

    :cond_1
    add-long/2addr v0, v2

    return-wide v0
.end method

.method detach()V
    .locals 1

    .prologue
    .line 1258
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 1259
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1262
    :cond_0
    return-void
.end method

.method isRunningLocked()Z
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1135
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAcquireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public plug(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "batteryUptime"    # J
    .param p5, "batteryRealtime"    # J

    .prologue
    .line 1122
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1126
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->plug(JJJ)V

    .line 1127
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1132
    :cond_0
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1265
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1267
    return-void
.end method

.method reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z
    .locals 5
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "detachIfReset"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1247
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-gtz v3, :cond_1

    move v0, v1

    .line 1248
    .local v0, "canDetach":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    :goto_1
    invoke-super {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 1249
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v1, :cond_0

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1253
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1254
    return v0

    .end local v0    # "canDetach":Z
    :cond_1
    move v0, v2

    .line 1247
    goto :goto_0

    .restart local v0    # "canDetach":Z
    :cond_2
    move v1, v2

    .line 1248
    goto :goto_1
.end method

.method setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    .line 1113
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    .line 1114
    return-void
.end method

.method startRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 4
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 1141
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_1

    .line 1142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1144
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    .line 1153
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1160
    :cond_1
    return-void
.end method

.method stopRunningLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 8
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 1168
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v4, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v4, :cond_0

    .line 1172
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1175
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(Lcom/android/internal/os/BatteryStatsImpl;Ljava/util/ArrayList;)V

    .line 1177
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1192
    :goto_1
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1195
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    goto :goto_0

    .line 1179
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 1180
    .local v2, "realtime":J
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    .line 1181
    .local v0, "batteryRealtime":J
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1182
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1183
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "batteryRealtime"    # J

    .prologue
    .line 1117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1118
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1119
    return-void
.end method
