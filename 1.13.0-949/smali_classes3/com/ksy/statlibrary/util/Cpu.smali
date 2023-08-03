.class public Lcom/ksy/statlibrary/util/Cpu;
.super Ljava/lang/Object;
.source "Cpu.java"


# static fields
.field static final SYSTEM_CPU_REGEX:Ljava/lang/String; = "((?i)(sys(tem)?\\s+[0-9]{1,2}(\\.[0-9]{1,2})?\\%))|([0-9]{1,2}\\.[0-9]{1,2}\\%\\s+(?i)(sys(tem)?))"

.field static final USER_CPU_REGEX:Ljava/lang/String; = "((?i)(use?r\\s+[0-9]{1,2}(\\.[0-9]{1,2})?\\%))|([0-9]{1,2}\\.[0-9]{1,2}\\%\\s+(?i)(use?r))"


# instance fields
.field private m_Package:Ljava/lang/String;

.field private m_fIdleCpuUsage:F

.field private m_fSystemCpuUsage:F

.field private m_fUserCpuUsage:F

.field public m_sProcessCpuUsage:Ljava/lang/String;

.field private m_sTopResults:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sTopResults:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fIdleCpuUsage:F

    .line 4
    iput v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fSystemCpuUsage:F

    .line 5
    iput v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fUserCpuUsage:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sTopResults:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fIdleCpuUsage:F

    .line 9
    iput v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fSystemCpuUsage:F

    .line 10
    iput v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fUserCpuUsage:F

    .line 11
    iput-object p1, p0, Lcom/ksy/statlibrary/util/Cpu;->m_Package:Ljava/lang/String;

    return-void
.end method

.method private getCPUInfo()V
    .locals 6

    const-string v0, "exp 22 = "

    const-string v1, "KSY_ANDROID_LOG"

    const-string v2, ""

    .line 1
    iput-object v2, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sTopResults:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "top -n 1 -d 1"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 4
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/ksy/statlibrary/util/Cpu;->m_Package:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v3, p0, Lcom/ksy/statlibrary/util/Cpu;->m_Package:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 9
    iput-object v2, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sTopResults:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "m_Package is  null "

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    .line 13
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exp 11 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    .line 14
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v4, :cond_4

    .line 16
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_4
    :goto_5
    throw v2
.end method


# virtual methods
.method public getIdle()F
    .locals 1

    iget v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fIdleCpuUsage:F

    return v0
.end method

.method public getProcessCpuUsage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sProcessCpuUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemUsage()F
    .locals 1

    iget v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fSystemCpuUsage:F

    return v0
.end method

.method public getUserUsage()F
    .locals 1

    iget v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fUserCpuUsage:F

    return v0
.end method

.method public parseTopResults()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/ksy/statlibrary/util/Cpu;->getCPUInfo()V

    .line 2
    iget-object v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sTopResults:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    array-length v1, v0

    if-lez v1, :cond_2

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, "%"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 7
    iput-object v3, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sProcessCpuUsage:Ljava/lang/String;

    const-string v0, ""

    .line 8
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_sProcessCpuUsage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public summaryString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CPU Information: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "User CPU utilized: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fUserCpuUsage:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "%\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "System CPU utilized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fSystemCpuUsage:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Idle CPU: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ksy/statlibrary/util/Cpu;->m_fIdleCpuUsage:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
