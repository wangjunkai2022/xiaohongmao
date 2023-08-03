.class public Lm0/c;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Lm0/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Lm0/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lm0/c;
    .locals 2

    const-class v0, Lm0/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lm0/c;->a:Lm0/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lm0/c;

    invoke-direct {v1}, Lm0/c;-><init>()V

    sput-object v1, Lm0/c;->a:Lm0/c;

    .line 3
    :cond_0
    sget-object v1, Lm0/c;->a:Lm0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lm0/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimmable"
        }
    .end annotation

    return-void
.end method

.method public b(Lm0/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimmable"
        }
    .end annotation

    return-void
.end method
