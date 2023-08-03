.class public Lorg/jsoup/nodes/g;
.super Lorg/jsoup/nodes/k;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/g$c;
    }
.end annotation

.annotation build Lorg/jsoup/internal/c;
.end annotation


# static fields
.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/lang/String;


# instance fields
.field private e:Lorg/jsoup/parser/g;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/g;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/jsoup/nodes/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/g;->i:Ljava/util/List;

    const-string v0, "\\s+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/g;->j:Ljava/util/regex/Pattern;

    const-string v0, "baseUri"

    .line 3
    invoke-static {v0}, Lorg/jsoup/nodes/b;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/g;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/g;->p(Ljava/lang/String;)Lorg/jsoup/parser/g;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lorg/jsoup/nodes/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lorg/jsoup/nodes/k;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lorg/jsoup/nodes/k;->c:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    .line 6
    iput-object p1, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/k;->Z(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private D1(Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private E1(Lorg/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->C1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->Q()Lorg/jsoup/nodes/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private I1(Z)Lorg/jsoup/select/Elements;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->nextAll()Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->prevAll()Lorg/jsoup/select/Elements;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private L1(Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->o()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/k;

    .line 3
    instance-of v2, v1, Lorg/jsoup/nodes/n;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lorg/jsoup/nodes/n;

    .line 5
    invoke-static {p1, v1}, Lorg/jsoup/nodes/g;->s0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/n;)V

    goto :goto_1

    .line 6
    :cond_0
    instance-of v2, v1, Lorg/jsoup/nodes/g;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lorg/jsoup/nodes/g;

    invoke-static {v1, p1}, Lorg/jsoup/nodes/g;->v0(Lorg/jsoup/nodes/g;Ljava/lang/StringBuilder;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static T1(Lorg/jsoup/nodes/k;)Z
    .locals 4
    .param p0    # Lorg/jsoup/nodes/k;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Lorg/jsoup/nodes/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lorg/jsoup/nodes/g;

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {v2}, Lorg/jsoup/parser/g;->m()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p0

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v1
.end method

.method private static Z1(Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static synthetic i0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/n;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/nodes/g;->s0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/n;)V

    return-void
.end method

.method static synthetic j0(Lorg/jsoup/nodes/g;)Lorg/jsoup/parser/g;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    return-object p0
.end method

.method private static k0(Lorg/jsoup/nodes/g;Lorg/jsoup/select/Elements;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {p0, p1}, Lorg/jsoup/nodes/g;->k0(Lorg/jsoup/nodes/g;Lorg/jsoup/select/Elements;)V

    :cond_0
    return-void
.end method

.method private static s0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/n;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->o0()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v1}, Lorg/jsoup/nodes/g;->T1(Lorg/jsoup/nodes/k;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p1, p1, Lorg/jsoup/nodes/c;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/jsoup/nodes/n;->q0(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/jsoup/internal/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private static v0(Lorg/jsoup/nodes/g;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {p0}, Lorg/jsoup/parser/g;->l()Ljava/lang/String;

    move-result-object p0

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/jsoup/nodes/n;->q0(Ljava/lang/StringBuilder;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " "

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static x1(Lorg/jsoup/nodes/g;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jsoup/nodes/g;",
            ">(",
            "Lorg/jsoup/nodes/g;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public A0(I)Lorg/jsoup/nodes/g;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public A1(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/jsoup/select/f;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->B1(Lorg/jsoup/select/c;)Z

    move-result p1

    return p1
.end method

.method protected B()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method B0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->o()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/jsoup/nodes/g;->i:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/g;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6
    iget-object v3, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/k;

    .line 7
    instance-of v4, v3, Lorg/jsoup/nodes/g;

    if-eqz v4, :cond_2

    .line 8
    check-cast v3, Lorg/jsoup/nodes/g;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jsoup/nodes/g;->f:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method public B1(Lorg/jsoup/select/c;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->Y1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Z

    move-result p1

    return p1
.end method

.method public C0()Lorg/jsoup/select/Elements;
    .locals 2

    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public C1()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->d()Z

    move-result v0

    return v0
.end method

.method public D0()I
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public E(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/k;->K(Ljava/lang/Appendable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public E0()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jsoup/nodes/g;->j:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->E0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const-string v0, ""

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public F1()Lorg/jsoup/nodes/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public G0(Ljava/util/Set;)Lorg/jsoup/nodes/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/nodes/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "class"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/b;->J(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    const-string v2, " "

    invoke-static {p1, v2}, Lorg/jsoup/internal/f;->k(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :goto_0
    return-object p0
.end method

.method public G1()Lorg/jsoup/nodes/g;
    .locals 4
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lorg/jsoup/nodes/g;->x1(Lorg/jsoup/nodes/g;Ljava/util/List;)I

    move-result v2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H0()Lorg/jsoup/nodes/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lorg/jsoup/nodes/k;->s()Lorg/jsoup/nodes/k;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    :cond_0
    return-object p0
.end method

.method public H1()Lorg/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/g;->I1(Z)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method I()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/nodes/k;->I()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jsoup/nodes/g;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public I0()Lorg/jsoup/nodes/g;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/k;->t()Lorg/jsoup/nodes/k;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method public J0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0
    .annotation runtime Lr7/h;
    .end annotation

    invoke-static {p1}, Lorg/jsoup/select/f;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->K0(Lorg/jsoup/select/c;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public J1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K0(Lorg/jsoup/select/c;)Lorg/jsoup/nodes/g;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->Y1()Lorg/jsoup/nodes/g;

    move-result-object v0

    move-object v1, p0

    .line 3
    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public K1()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/g;->L1(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method L(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lorg/jsoup/nodes/g;->D1(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lorg/jsoup/nodes/g;->E1(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/k;->F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/k;->F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_1
    :goto_0
    const/16 p2, 0x3c

    .line 6
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 7
    iget-object p2, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3}, Lorg/jsoup/nodes/b;->v(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 8
    :cond_2
    iget-object p2, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {p2}, Lorg/jsoup/parser/g;->k()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->o()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {p2}, Lorg/jsoup/parser/g;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_3
    const-string p2, " />"

    .line 11
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public L0()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->v1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->v1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->N()Lorg/jsoup/nodes/Document;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/g;->a2(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    :cond_0
    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    const/16 v4, 0x7c

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->F0()Ljava/util/Set;

    move-result-object v0

    const-string v4, "."

    invoke-static {v0, v4}, Lorg/jsoup/internal/f;->k(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/16 v4, 0x2e

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, " > "

    .line 12
    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/g;->a2(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->Q0()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":nth-child(%d)"

    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->L0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method M(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/n;

    if-nez v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/k;->F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const-string p2, "</"

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method public M0()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    .line 3
    instance-of v3, v2, Lorg/jsoup/nodes/e;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lorg/jsoup/nodes/e;

    .line 5
    invoke-virtual {v2}, Lorg/jsoup/nodes/e;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v3, v2, Lorg/jsoup/nodes/d;

    if-eqz v3, :cond_2

    .line 7
    check-cast v2, Lorg/jsoup/nodes/d;

    .line 8
    invoke-virtual {v2}, Lorg/jsoup/nodes/d;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    instance-of v3, v2, Lorg/jsoup/nodes/g;

    if-eqz v3, :cond_3

    .line 10
    check-cast v2, Lorg/jsoup/nodes/g;

    .line 11
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->M0()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_3
    instance-of v3, v2, Lorg/jsoup/nodes/c;

    if-eqz v3, :cond_0

    .line 14
    check-cast v2, Lorg/jsoup/nodes/c;

    .line 15
    invoke-virtual {v2}, Lorg/jsoup/nodes/n;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final M1()Lorg/jsoup/nodes/g;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    check-cast v0, Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method public N0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    .line 3
    instance-of v3, v2, Lorg/jsoup/nodes/e;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lorg/jsoup/nodes/e;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public N1()Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lorg/jsoup/nodes/g;->k0(Lorg/jsoup/nodes/g;Lorg/jsoup/select/Elements;)V

    return-object v0
.end method

.method public bridge synthetic O()Lorg/jsoup/nodes/k;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public O0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->m()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public O1(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lorg/jsoup/parser/f;->k(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/jsoup/nodes/k;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/k;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    return-object p0
.end method

.method protected P0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;
    .locals 2
    .param p1    # Lorg/jsoup/nodes/k;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->k()Lorg/jsoup/nodes/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    .line 3
    new-instance v0, Lorg/jsoup/nodes/g$c;

    iget-object v1, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/g$c;-><init>(Lorg/jsoup/nodes/g;I)V

    iput-object v0, p1, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    .line 4
    iget-object v1, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public P1(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jsoup/nodes/k;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    return-object p0
.end method

.method public Q0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/g;->x1(Lorg/jsoup/nodes/g;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public Q1(Ljava/util/Collection;)Lorg/jsoup/nodes/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jsoup/nodes/k;",
            ">;)",
            "Lorg/jsoup/nodes/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/g;->y1(ILjava/util/Collection;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public R0()Lorg/jsoup/nodes/g;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public R1(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/g;

    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/f;->q()Lorg/jsoup/parser/e;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jsoup/parser/g;->q(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->P1(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method public S0(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->y(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public S1(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lorg/jsoup/nodes/n;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->P1(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public bridge synthetic T(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->W1(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public T0()Lorg/jsoup/nodes/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public U0()Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$a;

    invoke-direct {v0}, Lorg/jsoup/select/c$a;-><init>()V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public U1()Lorg/jsoup/nodes/g;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lorg/jsoup/nodes/g;->x1(Lorg/jsoup/nodes/g;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public V0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/jsoup/select/c$p;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$p;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public V1()Lorg/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/g;->I1(Z)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public W0(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lorg/jsoup/select/c$b;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public W1(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->T(Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public X0(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lorg/jsoup/select/c$d;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$d;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public X1(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->F0()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->G0(Ljava/util/Set;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public bridge synthetic Y()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->Y1()Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public Y0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$e;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/c$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public Y1()Lorg/jsoup/nodes/g;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/k;->Y()Lorg/jsoup/nodes/k;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method public Z0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$f;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/c$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public a1(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$g;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/c$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public a2(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 0

    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->c(Ljava/lang/String;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public b1(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/g;->c1(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern syntax error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b2(Lorg/jsoup/select/c;)Lorg/jsoup/select/Elements;
    .locals 0

    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->d(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c0()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->g2()Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public c1(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$h;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/c$h;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public c2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0
    .annotation runtime Lr7/h;
    .end annotation

    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->e(Ljava/lang/String;Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->I0()Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public d1(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$i;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/c$i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public d2(Lorg/jsoup/select/c;)Lorg/jsoup/nodes/g;
    .locals 0
    .annotation runtime Lr7/h;
    .end annotation

    invoke-static {p1, p0}, Lorg/jsoup/select/a;->b(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->m0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public e1(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$j;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/c$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public e2(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jsoup/nodes/k;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p0, p2}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->n0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f0(Lorg/jsoup/select/e;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->p2(Lorg/jsoup/select/e;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public f1(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/jsoup/select/c$k;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$k;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public f2(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 2

    new-instance v0, Lorg/jsoup/select/Elements;

    const-class v1, Lorg/jsoup/nodes/g;

    invoke-static {p1, p0, v1}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public g1(I)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$q;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$q;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public g2()Lorg/jsoup/nodes/g;
    .locals 4

    new-instance v0, Lorg/jsoup/nodes/g;

    iget-object v1, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->k()Lorg/jsoup/nodes/b;

    move-result-object v3

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/g;->w0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h0(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->t2(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public h1(I)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$s;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$s;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public h2()Lorg/jsoup/select/Elements;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/jsoup/select/Elements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jsoup/select/Elements;-><init>(I)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/jsoup/select/Elements;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    if-eq v2, p0, :cond_1

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public i()Lorg/jsoup/nodes/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    return-object v0
.end method

.method public i1(I)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$t;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$t;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public i2()Lorg/jsoup/parser/g;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    return-object v0
.end method

.method public j1(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lorg/jsoup/internal/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lorg/jsoup/select/c$j0;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$j0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public j2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/g;->k:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/g;->Z1(Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k1(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$m;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$m;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public k2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    const-string v0, "Tag name must not be empty."

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->q()Lorg/jsoup/parser/e;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jsoup/parser/g;->q(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/g;->e:Lorg/jsoup/parser/g;

    return-object p0
.end method

.method public bridge synthetic l(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->y0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public l0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->F0()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->G0(Ljava/util/Set;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public l1(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$n;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$n;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public l2()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/jsoup/nodes/g$a;

    invoke-direct {v1, p0, v0}, Lorg/jsoup/nodes/g$a;-><init>(Lorg/jsoup/nodes/g;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/d;->c(Lorg/jsoup/select/e;Lorg/jsoup/nodes/k;)V

    .line 3
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->z0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public m0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->e(Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public m1(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->n1(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public m2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->R0()Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->N()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->N2()Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lorg/jsoup/nodes/e;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/n;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    :goto_0
    return-object p0
.end method

.method public n0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->f(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public n1(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$i0;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$i0;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public n2()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/n;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    .line 3
    instance-of v3, v2, Lorg/jsoup/nodes/n;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lorg/jsoup/nodes/n;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public o0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lorg/jsoup/parser/f;->k(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jsoup/nodes/k;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/k;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/k;->c([Lorg/jsoup/nodes/k;)V

    return-object p0
.end method

.method public o1(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->p1(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public o2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->F0()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->G0(Ljava/util/Set;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/k;->V(Lorg/jsoup/nodes/k;)V

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->x()Ljava/util/List;

    .line 4
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/k;->b0(I)V

    return-object p0
.end method

.method public p1(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/c$h0;

    invoke-direct {v0, p1}, Lorg/jsoup/select/c$h0;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public p2(Lorg/jsoup/select/e;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->f0(Lorg/jsoup/select/e;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public q0(Ljava/util/Collection;)Lorg/jsoup/nodes/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jsoup/nodes/k;",
            ">;)",
            "Lorg/jsoup/nodes/g;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/g;->y1(ILjava/util/Collection;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method protected q1()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    sget-object v1, Lorg/jsoup/nodes/k;->c:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q2()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->l2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "value"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/g;

    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/f;->q()Lorg/jsoup/parser/e;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jsoup/parser/g;->q(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method public r1(Ljava/lang/String;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "class"

    .line 2
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v2, :cond_7

    if-ge v2, v9, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v9, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_6

    .line 6
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    sub-int v3, v11, v10

    if-ne v3, v9, :cond_3

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 7
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v12

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    move v10, v11

    const/4 v3, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    sub-int/2addr v2, v10

    if-ne v2, v9, :cond_7

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 8
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public r2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->m2(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    const-string v0, "value"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/g;->w0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic s()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->H0()Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public s1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/k;

    .line 2
    instance-of v2, v1, Lorg/jsoup/nodes/n;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lorg/jsoup/nodes/n;

    .line 4
    invoke-virtual {v1}, Lorg/jsoup/nodes/n;->p0()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 5
    :cond_1
    instance-of v2, v1, Lorg/jsoup/nodes/g;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lorg/jsoup/nodes/g;

    .line 7
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->s1()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public s2()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/jsoup/nodes/g$b;

    invoke-direct {v1, p0, v0}, Lorg/jsoup/nodes/g$b;-><init>(Lorg/jsoup/nodes/g;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/d;->c(Lorg/jsoup/select/e;Lorg/jsoup/nodes/k;)V

    .line 3
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->I0()Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public t0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lorg/jsoup/nodes/n;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public t1()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->E(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 3
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lorg/jsoup/nodes/l;->a(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public t2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->h0(Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method protected bridge synthetic u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;
    .locals 0
    .param p1    # Lorg/jsoup/nodes/k;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->P0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public u1(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->R0()Lorg/jsoup/nodes/g;

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->o0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method protected v(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    return-void
.end method

.method public v1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/g;->h:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public bridge synthetic w()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->R0()Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public w0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/k;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    return-object p0
.end method

.method public w1(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const-string v0, "id"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/g;->w0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method protected x()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    sget-object v1, Lorg/jsoup/nodes/k;->c:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/jsoup/nodes/g$c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/g$c;-><init>(Lorg/jsoup/nodes/g;I)V

    iput-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

    return-object v0
.end method

.method public x0(Ljava/lang/String;Z)Lorg/jsoup/nodes/g;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/b;->F(Ljava/lang/String;Z)Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public bridge synthetic y(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->S0(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/g;

    move-result-object p1

    return-object p1
.end method

.method public y0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->l(Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public y1(ILjava/util/Collection;)Lorg/jsoup/nodes/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jsoup/nodes/k;",
            ">;)",
            "Lorg/jsoup/nodes/g;"
        }
    .end annotation

    const-string v0, "Children collection to be inserted must not be null."

    .line 1
    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->o()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Insert position out of bounds."

    .line 3
    invoke-static {v0, v2}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array p2, v1, [Lorg/jsoup/nodes/k;

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/k;

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    return-object p0
.end method

.method public z0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->m(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1
.end method

.method public varargs z1(I[Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;
    .locals 2

    const-string v0, "Children collection to be inserted must not be null."

    .line 1
    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->o()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Insert position out of bounds."

    .line 3
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    return-object p0
.end method
