.class final Lcom/google/common/base/d$c;
.super Lcom/google/common/base/d$v;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final c:Lcom/google/common/base/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/d$c;

    invoke-direct {v0}, Lcom/google/common/base/d$c;-><init>()V

    sput-object v0, Lcom/google/common/base/d$c;->c:Lcom/google/common/base/d$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lcom/google/common/base/d$v;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public B(C)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public C(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public E(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F()Lcom/google/common/base/d;
    .locals 1

    invoke-static {}, Lcom/google/common/base/d;->G()Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method

.method public I(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public M(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    return-object p1
.end method

.method public N(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    new-array p1, p1, [C

    .line 2
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([CC)V

    .line 3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

.method public O(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public U(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    return-object p1
.end method

.method public b(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/d;

    return-object p1
.end method

.method public h(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/a0;->d0(II)I

    if-ne p2, p1, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method
