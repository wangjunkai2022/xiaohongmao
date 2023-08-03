.class public Lorg/jsoup/nodes/b;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jsoup/nodes/a;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final d:Ljava/lang/String; = "data-"

.field static final e:C = '/'

.field private static final f:I = 0x3

.field private static final g:I = 0x2

.field static final h:I = -0x1

.field private static final i:Ljava/lang/String; = ""


# instance fields
.field private a:I

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jsoup/nodes/b;->a:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    return-void
.end method

.method static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private C(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x2f

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->b(Z)V

    .line 2
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 3
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    iget p1, p0, Lorg/jsoup/nodes/b;->a:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/jsoup/nodes/b;->a:I

    .line 6
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 7
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object v1, v0, p1

    return-void
.end method

.method static synthetic a(Lorg/jsoup/nodes/b;)I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/b;->a:I

    return p0
.end method

.method static synthetic b(Lorg/jsoup/nodes/b;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->C(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lorg/jsoup/nodes/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->I(I)V

    return-void
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/jsoup/nodes/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 3
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    .line 4
    :goto_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    return-void
.end method

.method static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private z(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public D()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b;->e(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :goto_0
    return-object p0
.end method

.method public F(Ljava/lang/String;Z)Lorg/jsoup/nodes/b;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b;->H(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->J(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public G(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 3
    iput-object p0, p1, Lorg/jsoup/nodes/a;->c:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 3
    iget-object p2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b;->e(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->I(I)V

    :cond_0
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->I(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->k()Lorg/jsoup/nodes/b;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/b;->h(I)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    aput-object p1, v0, v1

    .line 3
    iget-object p1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lorg/jsoup/nodes/b;->a:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/b;

    .line 3
    iget v2, p0, Lorg/jsoup/nodes/b;->a:I

    iget v3, p1, Lorg/jsoup/nodes/b;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v2, v3, :cond_6

    .line 5
    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 6
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v4, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 8
    iget-object v5, p1, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v3, v5, v3

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    return v1

    .line 9
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public f(Lorg/jsoup/nodes/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    iget v1, p1, Lorg/jsoup/nodes/b;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/b;->h(I)V

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 4
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->G(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/b;->C(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Lorg/jsoup/nodes/a;

    iget-object v3, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p0}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/nodes/b$a;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/b$a;-><init>(Lorg/jsoup/nodes/b;)V

    return-object v0
.end method

.method public k()Lorg/jsoup/nodes/b;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    iput v1, v0, Lorg/jsoup/nodes/b;->a:I

    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/b;->a:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/b;->a:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public m()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/nodes/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/b$b;-><init>(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b$a;)V

    return-object v0
.end method

.method public n(Lorg/jsoup/parser/e;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/e;->e()Z

    move-result p1

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 4
    :goto_1
    iget-object v4, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 5
    aget-object v5, v4, v3

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v4, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-direct {p0, v3}, Lorg/jsoup/nodes/b;->I(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_6
    return v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    return v0
.end method

.method public t(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->v(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final v(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/b;->C(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->o()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jsoup/nodes/a;->d(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v3, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, Lorg/jsoup/nodes/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method w(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
