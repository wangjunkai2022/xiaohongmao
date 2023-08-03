.class public Lcom/qennnsad/aknkaksd/data/repository/o;
.super Ljava/lang/Object;
.source "StaticSourceFactory.java"


# static fields
.field public static a:Lcom/qennnsad/aknkaksd/data/repository/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/qennnsad/aknkaksd/data/repository/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/o;->a:Lcom/qennnsad/aknkaksd/data/repository/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/data/repository/l;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/o;->a:Lcom/qennnsad/aknkaksd/data/repository/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/qennnsad/aknkaksd/data/repository/l;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/data/repository/l;-><init>()V

    sput-object v1, Lcom/qennnsad/aknkaksd/data/repository/o;->a:Lcom/qennnsad/aknkaksd/data/repository/c;

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
    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/o;->a:Lcom/qennnsad/aknkaksd/data/repository/c;

    return-object v0
.end method
