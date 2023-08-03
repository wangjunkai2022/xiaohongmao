.class Lcom/google/common/util/concurrent/h$a;
.super Lcom/google/common/util/concurrent/Service$b;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/h;->l()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic b:Lcom/google/common/util/concurrent/h;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/h;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/h$a;->b:Lcom/google/common/util/concurrent/h;

    iput-object p2, p0, Lcom/google/common/util/concurrent/h$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/google/common/util/concurrent/h$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method public e(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 0

    iget-object p1, p0, Lcom/google/common/util/concurrent/h$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
