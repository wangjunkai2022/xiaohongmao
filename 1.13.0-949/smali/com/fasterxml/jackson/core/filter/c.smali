.class public Lcom/fasterxml/jackson/core/filter/c;
.super Lcom/fasterxml/jackson/core/filter/TokenFilter;
.source "JsonPointerBasedFilter.java"


# instance fields
.field protected final b:Lcom/fasterxml/jackson/core/e;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/c;->b:Lcom/fasterxml/jackson/core/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/fasterxml/jackson/core/e;->j(Ljava/lang/String;)Lcom/fasterxml/jackson/core/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/c;-><init>(Lcom/fasterxml/jackson/core/e;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/c;->b:Lcom/fasterxml/jackson/core/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/e;->s()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public e()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public h(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/c;->b:Lcom/fasterxml/jackson/core/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/e;->q(I)Lcom/fasterxml/jackson/core/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/e;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/core/filter/c;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/filter/c;-><init>(Lcom/fasterxml/jackson/core/e;)V

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/c;->b:Lcom/fasterxml/jackson/core/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/e;->r(Ljava/lang/String;)Lcom/fasterxml/jackson/core/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/e;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/core/filter/c;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/filter/c;-><init>(Lcom/fasterxml/jackson/core/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JsonPointerFilter at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/c;->b:Lcom/fasterxml/jackson/core/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
