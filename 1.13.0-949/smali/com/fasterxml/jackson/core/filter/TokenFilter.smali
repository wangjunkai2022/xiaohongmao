.class public Lcom/fasterxml/jackson/core/filter/TokenFilter;
.super Ljava/lang/Object;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;
    }
.end annotation


# static fields
.field public static final a:Lcom/fasterxml/jackson/core/filter/TokenFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public e()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result v0

    return v0
.end method

.method public g(Z)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public h(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public i(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result v0

    return v0
.end method

.method public k(D)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public l(F)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public m(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public n(J)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public o(Ljava/math/BigDecimal;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public p(Ljava/math/BigInteger;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result v0

    return v0
.end method

.method public s(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    return-object p0
.end method

.method public t(Ljava/io/Reader;I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p0, v0, :cond_0

    const-string v0, "TokenFilter.INCLUDE_ALL"

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method

.method public v(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a()Z

    move-result p1

    return p1
.end method
