.class public Lcom/google/common/eventbus/c;
.super Ljava/lang/Object;
.source "DeadEvent.java"


# annotations
.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/eventbus/c;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/eventbus/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/eventbus/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/eventbus/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/v;->c(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/eventbus/c;->a:Ljava/lang/Object;

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/eventbus/c;->b:Ljava/lang/Object;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/v$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
