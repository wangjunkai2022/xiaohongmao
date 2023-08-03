.class public Lshaded/org/apache/commons/codec/language/bm/a;
.super Ljava/lang/Object;
.source "BeiderMorseEncoder.java"

# interfaces
.implements Lh9/h;


# instance fields
.field private a:Lshaded/org/apache/commons/codec/language/bm/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/d;

    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/NameType;->GENERIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

    sget-object v2, Lshaded/org/apache/commons/codec/language/bm/RuleType;->APPROX:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lshaded/org/apache/commons/codec/language/bm/d;-><init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Z)V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lshaded/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lshaded/org/apache/commons/codec/EncoderException;

    const-string v0, "BeiderMorseEncoder encode parameter is not of type String"

    invoke-direct {p1, v0}, Lshaded/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lshaded/org/apache/commons/codec/language/bm/NameType;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    invoke-virtual {v0}, Lshaded/org/apache/commons/codec/language/bm/d;->f()Lshaded/org/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lshaded/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/language/bm/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Lshaded/org/apache/commons/codec/language/bm/RuleType;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    invoke-virtual {v0}, Lshaded/org/apache/commons/codec/language/bm/d;->g()Lshaded/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    invoke-virtual {v0}, Lshaded/org/apache/commons/codec/language/bm/d;->h()Z

    move-result v0

    return v0
.end method

.method public g(Z)V
    .locals 4

    .line 1
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/d;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/bm/d;->f()Lshaded/org/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 2
    invoke-virtual {v2}, Lshaded/org/apache/commons/codec/language/bm/d;->g()Lshaded/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 3
    invoke-virtual {v3}, Lshaded/org/apache/commons/codec/language/bm/d;->e()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lshaded/org/apache/commons/codec/language/bm/d;-><init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    return-void
.end method

.method public h(I)V
    .locals 4

    .line 1
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/d;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/bm/d;->f()Lshaded/org/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 2
    invoke-virtual {v2}, Lshaded/org/apache/commons/codec/language/bm/d;->g()Lshaded/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 3
    invoke-virtual {v3}, Lshaded/org/apache/commons/codec/language/bm/d;->h()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lshaded/org/apache/commons/codec/language/bm/d;-><init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    return-void
.end method

.method public i(Lshaded/org/apache/commons/codec/language/bm/NameType;)V
    .locals 4

    .line 1
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/d;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 2
    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/bm/d;->g()Lshaded/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v1

    iget-object v2, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 3
    invoke-virtual {v2}, Lshaded/org/apache/commons/codec/language/bm/d;->h()Z

    move-result v2

    iget-object v3, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 4
    invoke-virtual {v3}, Lshaded/org/apache/commons/codec/language/bm/d;->e()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lshaded/org/apache/commons/codec/language/bm/d;-><init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    return-void
.end method

.method public j(Lshaded/org/apache/commons/codec/language/bm/RuleType;)V
    .locals 4

    .line 1
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/d;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/bm/d;->f()Lshaded/org/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 2
    invoke-virtual {v2}, Lshaded/org/apache/commons/codec/language/bm/d;->h()Z

    move-result v2

    iget-object v3, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    .line 3
    invoke-virtual {v3}, Lshaded/org/apache/commons/codec/language/bm/d;->e()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lshaded/org/apache/commons/codec/language/bm/d;-><init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/a;->a:Lshaded/org/apache/commons/codec/language/bm/d;

    return-void
.end method
