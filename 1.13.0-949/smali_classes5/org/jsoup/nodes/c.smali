.class public Lorg/jsoup/nodes/c;
.super Lorg/jsoup/nodes/n;
.source "CDataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public H()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata"

    return-object v0
.end method

.method L(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "<![CDATA["

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->o0()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method M(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    :try_start_0
    const-string p2, "]]>"

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lorg/jsoup/UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->w0()Lorg/jsoup/nodes/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Lorg/jsoup/nodes/n;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->w0()Lorg/jsoup/nodes/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->w0()Lorg/jsoup/nodes/c;

    move-result-object v0

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->o0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0()Lorg/jsoup/nodes/c;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/n;->m0()Lorg/jsoup/nodes/n;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/c;

    return-object v0
.end method
