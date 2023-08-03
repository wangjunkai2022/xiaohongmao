.class public Lw5/c;
.super Ljava/lang/Object;
.source "IConfig.java"


# static fields
.field public static final e:Ljava/lang/String; = "tlog.log"

.field private static f:Lw5/c;


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lw5/c;->a:Z

    .line 3
    iput-boolean v0, p0, Lw5/c;->b:Z

    const-wide/32 v0, 0x186a0

    .line 4
    iput-wide v0, p0, Lw5/c;->c:J

    const-string v0, "TLOG"

    .line 5
    iput-object v0, p0, Lw5/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static c()Lw5/c;
    .locals 2

    .line 1
    sget-object v0, Lw5/c;->f:Lw5/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lw5/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lw5/c;->f:Lw5/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lw5/c;

    invoke-direct {v1}, Lw5/c;-><init>()V

    sput-object v1, Lw5/c;->f:Lw5/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lw5/c;->f:Lw5/c;

    return-object v0
.end method


# virtual methods
.method public a(J)Lw5/c;
    .locals 0

    iput-wide p1, p0, Lw5/c;->c:J

    return-object p0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lw5/c;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lw5/c;->a:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lw5/c;->b:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw5/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Z)Lw5/c;
    .locals 0

    iput-boolean p1, p0, Lw5/c;->a:Z

    return-object p0
.end method

.method public h(Z)Lw5/c;
    .locals 0

    iput-boolean p1, p0, Lw5/c;->b:Z

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lw5/c;
    .locals 0

    iput-object p1, p0, Lw5/c;->d:Ljava/lang/String;

    return-object p0
.end method
