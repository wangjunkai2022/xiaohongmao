.class public Lorg/jsoup/nodes/f;
.super Lorg/jsoup/nodes/j;
.source "DocumentType.java"


# static fields
.field public static final f:Ljava/lang/String; = "PUBLIC"

.field public static final g:Ljava/lang/String; = "SYSTEM"

.field private static final h:Ljava/lang/String; = "name"

.field private static final i:Ljava/lang/String; = "pubSysKey"

.field private static final j:Ljava/lang/String; = "publicId"

.field private static final k:Ljava/lang/String; = "systemId"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    invoke-static {p3}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    const-string v0, "name"

    .line 5
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    const-string p1, "publicId"

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    const-string p1, "systemId"

    .line 7
    invoke-virtual {p0, p1, p3}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    .line 8
    invoke-direct {p0}, Lorg/jsoup/nodes/f;->r0()V

    return-void
.end method

.method private m0(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/internal/f;->g(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private r0()V
    .locals 2

    const-string v0, "publicId"

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "pubSysKey"

    if-eqz v0, :cond_0

    const-string v0, "PUBLIC"

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    goto :goto_0

    :cond_0
    const-string v0, "systemId"

    .line 3
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SYSTEM"

    .line 4
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->A(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public H()Ljava/lang/String;
    .locals 1

    const-string v0, "#doctype"

    return-object v0
.end method

.method L(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->o()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_0

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "<!doctype"

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const-string p2, "<!DOCTYPE"

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    const-string p2, "name"

    .line 4
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    const-string p2, "pubSysKey"

    .line 6
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 8
    :cond_2
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 10
    :cond_3
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/f;->m0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    const/16 p2, 0x3e

    .line 12
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method M(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic T(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->T(Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/j;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/j;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()I
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/j;->o()I

    move-result v0

    return v0
.end method

.method public o0()Ljava/lang/String;
    .locals 1

    const-string v0, "publicId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p0(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "pubSysKey"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    :cond_0
    return-void
.end method

.method public q0()Ljava/lang/String;
    .locals 1

    const-string v0, "systemId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/j;->w()Lorg/jsoup/nodes/k;

    move-result-object v0

    return-object v0
.end method
