.class public abstract Lcom/fasterxml/jackson/core/f;
.super Ljava/lang/Object;
.source "JsonStreamContext.java"


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->a:I

    .line 7
    iput p2, p0, Lcom/fasterxml/jackson/core/f;->b:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lcom/fasterxml/jackson/core/f;->a:I

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    .line 4
    iget p1, p1, Lcom/fasterxml/jackson/core/f;->b:I

    iput p1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract e()Lcom/fasterxml/jackson/core/f;
.end method

.method public f(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p1, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "?"

    return-object v0

    :cond_0
    const-string v0, "OBJECT"

    return-object v0

    :cond_1
    const-string v0, "ARRAY"

    return-object v0

    :cond_2
    const-string v0, "ROOT"

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->h()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Lcom/fasterxml/jackson/core/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/core/e;->l(Lcom/fasterxml/jackson/core/f;Z)Lcom/fasterxml/jackson/core/e;

    move-result-object v0

    return-object v0
.end method

.method public o(Z)Lcom/fasterxml/jackson/core/e;
    .locals 0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/e;->l(Lcom/fasterxml/jackson/core/f;Z)Lcom/fasterxml/jackson/core/e;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public q(Lcom/fasterxml/jackson/core/io/ContentReference;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0

    sget-object p1, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object p1
.end method

.method public r()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "?"

    return-object v0

    :cond_0
    const-string v0, "Object"

    return-object v0

    :cond_1
    const-string v0, "Array"

    return-object v0

    :cond_2
    const-string v0, "root"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/f;->a:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x22

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v1, 0x5b

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
