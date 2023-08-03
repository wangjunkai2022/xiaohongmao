.class Lcom/google/common/eventbus/g$a;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/eventbus/g;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/eventbus/g;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/g;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/eventbus/g$a;->b:Lcom/google/common/eventbus/g;

    iput-object p2, p0, Lcom/google/common/eventbus/g$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/eventbus/g$a;->b:Lcom/google/common/eventbus/g;

    iget-object v1, p0, Lcom/google/common/eventbus/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/eventbus/g;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/google/common/eventbus/g$a;->b:Lcom/google/common/eventbus/g;

    invoke-static {v1}, Lcom/google/common/eventbus/g;->b(Lcom/google/common/eventbus/g;)Lcom/google/common/eventbus/e;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/eventbus/g$a;->b:Lcom/google/common/eventbus/g;

    iget-object v3, p0, Lcom/google/common/eventbus/g$a;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/common/eventbus/g;->a(Lcom/google/common/eventbus/g;Ljava/lang/Object;)Lcom/google/common/eventbus/h;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/eventbus/e;->b(Ljava/lang/Throwable;Lcom/google/common/eventbus/h;)V

    :goto_0
    return-void
.end method
