.class public Lcom/fasterxml/jackson/core/util/g;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "JsonGeneratorDelegate.java"


# instance fields
.field protected e:Lcom/fasterxml/jackson/core/JsonGenerator;

.field protected f:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/g;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 4
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/util/g;->f:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->A()Z

    move-result v0

    return v0
.end method

.method public A0(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->A0(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public A1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->A1([CII)V

    return-void
.end method

.method public B0(Lcom/fasterxml/jackson/core/c;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->B0(Lcom/fasterxml/jackson/core/c;)V

    return-void
.end method

.method public B1([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->B1([BII)V

    return-void
.end method

.method public C0()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->C0()Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->D()Z

    move-result v0

    return v0
.end method

.method public D0([DII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->D0([DII)V

    return-void
.end method

.method public D1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->D1(Ljava/lang/String;)V

    return-void
.end method

.method public E0([III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->E0([III)V

    return-void
.end method

.method public E1(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->E1(Ljava/lang/String;II)V

    return-void
.end method

.method public F0([JII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->F0([JII)V

    return-void
.end method

.method public F1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->F1([CII)V

    return-void
.end method

.method public G(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/g;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->G(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->G(Lcom/fasterxml/jackson/core/JsonParser;)V

    :goto_0
    return-void
.end method

.method public G0([Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->G0([Ljava/lang/String;II)V

    return-void
.end method

.method public G1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    return-void
.end method

.method public H(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/g;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    :goto_0
    return-void
.end method

.method public H1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->H1(I)V

    return-void
.end method

.method public I()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->I()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public I0(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->I0(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public I1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->I1(Ljava/lang/Object;)V

    return-void
.end method

.method public J(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->J(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public J1(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->J1(Ljava/lang/Object;I)V

    return-void
.end method

.method public K(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->K(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public K0(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/JsonGenerator;->K0(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    return-void
.end method

.method public K1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    return-void
.end method

.method public L()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->L()Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-result-object v0

    return-object v0
.end method

.method public L1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->L1(Ljava/lang/Object;)V

    return-void
.end method

.method public M()Lcom/fasterxml/jackson/core/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->M()Lcom/fasterxml/jackson/core/h;

    move-result-object v0

    return-object v0
.end method

.method public M1(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->M1(Ljava/lang/Object;I)V

    return-void
.end method

.method public N1(Lcom/fasterxml/jackson/core/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->N1(Lcom/fasterxml/jackson/core/j;)V

    return-void
.end method

.method public O0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->O0(Z)V

    return-void
.end method

.method public O1(Ljava/io/Reader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->O1(Ljava/io/Reader;I)V

    return-void
.end method

.method public P1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->P1(Ljava/lang/String;)V

    return-void
.end method

.method public Q0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->Q0(Ljava/lang/Object;)V

    return-void
.end method

.method public Q1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->Q1([CII)V

    return-void
.end method

.method public R0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->R0()V

    return-void
.end method

.method public S0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->S0()V

    return-void
.end method

.method public S1(Lcom/fasterxml/jackson/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/g;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->S1(Lcom/fasterxml/jackson/core/m;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/g;->W0()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/g;->M()Lcom/fasterxml/jackson/core/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/h;->writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/m;)V

    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->T0(J)V

    return-void
.end method

.method public T1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->T1(Ljava/lang/Object;)V

    return-void
.end method

.method public U0(Lcom/fasterxml/jackson/core/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->U0(Lcom/fasterxml/jackson/core/j;)V

    return-void
.end method

.method public V0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    return-void
.end method

.method public W()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->W()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public W0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    return-void
.end method

.method public W1([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->W1([BII)V

    return-void
.end method

.method public X()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->X()I

    move-result v0

    return v0
.end method

.method public X1()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object v0
.end method

.method public Y0(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->Y0(D)V

    return-void
.end method

.method public Y1()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object v0
.end method

.method public Z0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->Z0(F)V

    return-void
.end method

.method public a1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a1(I)V

    return-void
.end method

.method public b1(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->b1(J)V

    return-void
.end method

.method public c1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c1(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    return-void
.end method

.method public d0()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->d0()I

    move-result v0

    return v0
.end method

.method public d1(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d1(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public e1(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->e1(Ljava/math/BigInteger;)V

    return-void
.end method

.method public f1(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->f1(S)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    return-void
.end method

.method public g0()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->g0()I

    move-result v0

    return v0
.end method

.method public g1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->g1([CII)V

    return-void
.end method

.method public h0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->h0()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->isClosed()Z

    move-result v0

    return v0
.end method

.method public l0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->l0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public n0()Lcom/fasterxml/jackson/core/i;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->n0()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    return-object v0
.end method

.method public o0()Lcom/fasterxml/jackson/core/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->o0()Lcom/fasterxml/jackson/core/c;

    move-result-object v0

    return-object v0
.end method

.method public o1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/g;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->o1(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/g;->W0()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/g;->M()Lcom/fasterxml/jackson/core/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/h;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public p0()Lcom/fasterxml/jackson/core/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/util/f<",
            "Lcom/fasterxml/jackson/core/StreamWriteCapability;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->p0()Lcom/fasterxml/jackson/core/util/f;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->q()Z

    move-result v0

    return v0
.end method

.method public q0(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->q0(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public r(Lcom/fasterxml/jackson/core/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->r(Lcom/fasterxml/jackson/core/c;)Z

    move-result p1

    return p1
.end method

.method public r1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->r1(Ljava/lang/Object;)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->s()Z

    move-result v0

    return v0
.end method

.method public s0(II)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->s0(II)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public s1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->s1(Ljava/lang/Object;)V

    return-void
.end method

.method public t0(II)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->t0(II)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public t1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->t1(Ljava/lang/String;)V

    return-void
.end method

.method public u0(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->u0(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public u1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/g;->o1(Ljava/lang/Object;)V

    return-void
.end method

.method public v0(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->v0(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public w0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->w0(Ljava/lang/Object;)V

    return-void
.end method

.method public w1(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method

.method public x0(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->x0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public x1(Lcom/fasterxml/jackson/core/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->x1(Lcom/fasterxml/jackson/core/j;)V

    return-void
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->y()Z

    move-result v0

    return v0
.end method

.method public y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public y1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->y1(Ljava/lang/String;)V

    return-void
.end method

.method public z0(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->z0(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p0
.end method

.method public z1(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->z1(Ljava/lang/String;II)V

    return-void
.end method
