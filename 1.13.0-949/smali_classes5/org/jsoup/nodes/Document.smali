.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/g;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$OutputSettings;,
        Lorg/jsoup/nodes/Document$QuirksMode;
    }
.end annotation


# static fields
.field private static final r:Lorg/jsoup/select/c;


# instance fields
.field private l:Lorg/jsoup/Connection;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private m:Lorg/jsoup/nodes/Document$OutputSettings;

.field private n:Lorg/jsoup/parser/f;

.field private o:Lorg/jsoup/nodes/Document$QuirksMode;

.field private final p:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jsoup/select/c$j0;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lorg/jsoup/select/c$j0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/nodes/Document;->r:Lorg/jsoup/select/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/e;

    const-string v1, "#root"

    invoke-static {v1, v0}, Lorg/jsoup/parser/g;->q(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->m:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 3
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->o:Lorg/jsoup/nodes/Document$QuirksMode;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/jsoup/nodes/Document;->q:Z

    .line 5
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->p:Ljava/lang/String;

    .line 6
    invoke-static {}, Lorg/jsoup/parser/f;->c()Lorg/jsoup/parser/f;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->n:Lorg/jsoup/parser/f;

    return-void
.end method

.method public static B2(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->N2()Lorg/jsoup/parser/f;

    move-result-object p0

    iput-object p0, v0, Lorg/jsoup/nodes/Document;->n:Lorg/jsoup/parser/f;

    const-string p0, "html"

    .line 4
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/g;->r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p0

    const-string v1, "head"

    .line 5
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/g;->r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    const-string v1, "body"

    .line 6
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/g;->r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method private D2()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document;->q:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->o()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_1

    const-string v0, "meta[charset]"

    .line 4
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->c2(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    const-string v1, "charset"

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v2()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/g;->w0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->E2()Lorg/jsoup/nodes/g;

    move-result-object v0

    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/g;->r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v2()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/g;->w0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    :goto_0
    const-string v0, "meta[name=charset]"

    .line 7
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->a2(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    goto :goto_1

    .line 8
    :cond_1
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->x()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;

    .line 10
    instance-of v2, v0, Lorg/jsoup/nodes/o;

    const-string v3, "encoding"

    const-string v4, "1.0"

    const-string v5, "xml"

    const-string v6, "version"

    if-eqz v2, :cond_3

    .line 11
    check-cast v0, Lorg/jsoup/nodes/o;

    .line 12
    invoke-virtual {v0}, Lorg/jsoup/nodes/o;->p0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v2()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/o;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    .line 14
    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/o;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/o;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Lorg/jsoup/nodes/o;

    invoke-direct {v0, v5, v1}, Lorg/jsoup/nodes/o;-><init>(Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/o;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    .line 18
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v2()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/o;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    .line 19
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->P1(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    goto :goto_1

    .line 20
    :cond_3
    new-instance v0, Lorg/jsoup/nodes/o;

    invoke-direct {v0, v5, v1}, Lorg/jsoup/nodes/o;-><init>(Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/o;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    .line 22
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->v2()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/o;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    .line 23
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->P1(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    :cond_4
    :goto_1
    return-void
.end method

.method private F2()Lorg/jsoup/nodes/g;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    .line 2
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/g;->r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method private I2(Ljava/lang/String;Lorg/jsoup/nodes/g;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/g;->j1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/k;

    .line 7
    invoke-virtual {v3}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v3}, Lorg/jsoup/nodes/k;->S()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/k;

    .line 10
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    :cond_2
    return-void
.end method

.method private J2(Lorg/jsoup/nodes/g;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p1, Lorg/jsoup/nodes/g;->g:Ljava/util/List;

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

    .line 5
    invoke-virtual {v2}, Lorg/jsoup/nodes/n;->p0()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    .line 9
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/k;->U(Lorg/jsoup/nodes/k;)V

    .line 10
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v3

    new-instance v4, Lorg/jsoup/nodes/n;

    const-string v5, " "

    invoke-direct {v4, v5}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/g;->P1(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    .line 11
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/g;->P1(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public A2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/g;

    sget-object v1, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/e;

    invoke-static {p1, v1}, Lorg/jsoup/parser/g;->q(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    return-object v0
.end method

.method public C2()Lorg/jsoup/nodes/f;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

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
    instance-of v2, v1, Lorg/jsoup/nodes/f;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lorg/jsoup/nodes/f;

    return-object v1

    .line 4
    :cond_1
    instance-of v1, v1, Lorg/jsoup/nodes/j;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public E2()Lorg/jsoup/nodes/g;
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->F2()Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "head"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 4
    :cond_1
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/g;->R1(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public G2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->p:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public H2()Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->F2()Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->E2()Lorg/jsoup/nodes/g;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    .line 4
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/Document;->J2(Lorg/jsoup/nodes/g;)V

    .line 5
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;->J2(Lorg/jsoup/nodes/g;)V

    .line 6
    invoke-direct {p0, p0}, Lorg/jsoup/nodes/Document;->J2(Lorg/jsoup/nodes/g;)V

    const-string v1, "head"

    .line 7
    invoke-direct {p0, v1, v0}, Lorg/jsoup/nodes/Document;->I2(Ljava/lang/String;Lorg/jsoup/nodes/g;)V

    const-string v1, "body"

    .line 8
    invoke-direct {p0, v1, v0}, Lorg/jsoup/nodes/Document;->I2(Ljava/lang/String;Lorg/jsoup/nodes/g;)V

    .line 9
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->D2()V

    return-object p0
.end method

.method public bridge synthetic I0()Lorg/jsoup/nodes/g;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->x2()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/g;->t1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K2()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->m:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public L2(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->m:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public M2(Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->n:Lorg/jsoup/parser/f;

    return-object p0
.end method

.method public N2()Lorg/jsoup/parser/f;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->n:Lorg/jsoup/parser/f;

    return-object v0
.end method

.method public O2()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->o:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public P2(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->o:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public Q2()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->E2()Lorg/jsoup/nodes/g;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/Document;->r:Lorg/jsoup/select/c;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/g;->d2(Lorg/jsoup/select/c;)Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->l2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public R2(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->E2()Lorg/jsoup/nodes/g;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/Document;->r:Lorg/jsoup/select/c;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/g;->d2(Lorg/jsoup/select/c;)Lorg/jsoup/nodes/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->E2()Lorg/jsoup/nodes/g;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/g;->r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->m2(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    return-void
.end method

.method public S2(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/nodes/Document;->q:Z

    return-void
.end method

.method public T2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document;->q:Z

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->x2()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public m2(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->m2(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    return-object p0
.end method

.method public bridge synthetic t()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->x2()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public u2()Lorg/jsoup/nodes/g;
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->F2()Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->B0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "body"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    return-object v2

    .line 4
    :cond_2
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/g;->r0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    return-object v0
.end method

.method public v2()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->m:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public w2(Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->S2(Z)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->m:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->c(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 3
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->D2()V

    return-void
.end method

.method public x2()Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/jsoup/nodes/g;->I0()Lorg/jsoup/nodes/g;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->m:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->d()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->m:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public y2()Lorg/jsoup/Connection;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->l:Lorg/jsoup/Connection;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/jsoup/a;->j()Lorg/jsoup/Connection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public z2(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->l:Lorg/jsoup/Connection;

    return-object p0
.end method
