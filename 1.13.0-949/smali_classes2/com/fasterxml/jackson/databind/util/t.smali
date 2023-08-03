.class public Lcom/fasterxml/jackson/databind/util/t;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/t$c;,
        Lcom/fasterxml/jackson/databind/util/t$b;
    }
.end annotation


# static fields
.field protected static final t:I


# instance fields
.field protected e:Lcom/fasterxml/jackson/core/h;

.field protected f:Lcom/fasterxml/jackson/core/f;

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Lcom/fasterxml/jackson/databind/util/t$c;

.field protected n:Lcom/fasterxml/jackson/databind/util/t$c;

.field protected o:I

.field protected p:Ljava/lang/Object;

.field protected q:Ljava/lang/Object;

.field protected r:Z

.field protected s:Lcom/fasterxml/jackson/core/json/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/util/t;->t:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/t;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->s0()Lcom/fasterxml/jackson/core/h;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->N0()Lcom/fasterxml/jackson/core/f;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->f:Lcom/fasterxml/jackson/core/f;

    .line 16
    sget v1, Lcom/fasterxml/jackson/databind/util/t;->t:I

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Lcom/fasterxml/jackson/core/json/e;->z(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    .line 18
    new-instance v1, Lcom/fasterxml/jackson/databind/util/t$c;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/t$c;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->m:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 19
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    .line 20
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->H()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    .line 21
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->G()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    .line 22
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-nez p2, :cond_2

    goto :goto_2

    .line 23
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 24
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/h;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    .line 4
    sget p1, Lcom/fasterxml/jackson/databind/util/t;->t:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/fasterxml/jackson/core/json/e;->z(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    .line 6
    new-instance p1, Lcom/fasterxml/jackson/databind/util/t$c;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/util/t$c;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->m:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 7
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    .line 8
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    .line 9
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    if-nez p2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 10
    :cond_1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    return-void
.end method

.method private final Z1(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/t$c;->h(I)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    if-eqz v0, :cond_0

    const-string v2, "[objectId="

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/t$c;->i(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "[typeId="

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final d2(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->X0()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->p:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M0()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->q:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    :cond_1
    return-void
.end method

.method private f2(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/t$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->A0()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->o1(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->O0(Z)V

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/util/t;->O0(Z)V

    goto :goto_0

    .line 9
    :pswitch_4
    iget-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/t;->l:Z

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d1(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->L0()Ljava/lang/Number;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object p2, Lcom/fasterxml/jackson/databind/util/t$a;->b:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v1, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->H0()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/t;->b1(J)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->n0()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->e1(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->F0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->a1(I)V

    goto :goto_0

    .line 17
    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->j1()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->T0()[C

    move-result-object p2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->V0()I

    move-result v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U0()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->Q1([CII)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->P1(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h2(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/t;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/t;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/util/t;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    return v0
.end method

.method public A1([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->d()V

    return-void
.end method

.method public B1([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->d()V

    return-void
.end method

.method public C0()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    return-object p0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    return v0
.end method

.method public D1(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/q;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/util/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public E1(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p3, v0, :cond_1

    :cond_0
    add-int/2addr p3, p2

    .line 2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_1
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance p3, Lcom/fasterxml/jackson/databind/util/q;

    invoke-direct {p3, p1}, Lcom/fasterxml/jackson/databind/util/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public F1([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public G(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/t$a;->a:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->A0()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->o1(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    goto/16 :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->O0(Z)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/util/t;->O0(Z)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->l:Z

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d1(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/util/t$a;->b:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->z0()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/t;->Y0(D)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->C0()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->Z0(F)V

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d1(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 15
    :pswitch_5
    sget-object v0, Lcom/fasterxml/jackson/databind/util/t$a;->b:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->H0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/t;->b1(J)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->n0()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->e1(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->F0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->a1(I)V

    goto :goto_0

    .line 19
    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->j1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->T0()[C

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->V0()I

    move-result v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U0()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/t;->Q1([CII)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->P1(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->V0(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->R0()V

    goto :goto_0

    .line 24
    :pswitch_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->G1()V

    goto :goto_0

    .line 25
    :pswitch_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->S0()V

    goto :goto_0

    .line 26
    :pswitch_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->K1()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->a2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->u()Lcom/fasterxml/jackson/core/json/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    return-void
.end method

.method public H(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->V0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    .line 7
    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/databind/util/t$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/t;->f2(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->R0()V

    goto :goto_1

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v0, :cond_4

    .line 11
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->G1()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->e2(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->S0()V

    goto :goto_1

    .line 15
    :cond_6
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v0, :cond_7

    .line 16
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->K1()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->e2(Lcom/fasterxml/jackson/core/JsonParser;)V

    :goto_1
    return-void

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No token available from argument `JsonParser`"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I0(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->a2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/e;->v(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    return-void
.end method

.method public J(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    return-object p0
.end method

.method public J1(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/util/t;->a2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/json/e;->v(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    return-void
.end method

.method public K(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    return-object p0
.end method

.method public K0(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array p1, p4, [B

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->o1(Ljava/lang/Object;)V

    return-void
.end method

.method public final K1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->a2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->w()Lcom/fasterxml/jackson/core/json/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    return-void
.end method

.method public L1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->a2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/e;->x(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    return-void
.end method

.method public M()Lcom/fasterxml/jackson/core/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    return-object v0
.end method

.method public M1(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/util/t;->a2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/json/e;->x(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    return-void
.end method

.method public N1(Lcom/fasterxml/jackson/core/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public O0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->b2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-void
.end method

.method public P1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public Q0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public Q1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->P1(Ljava/lang/String;)V

    return-void
.end method

.method public final R0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->X1(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->B()Lcom/fasterxml/jackson/core/json/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->X1(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->B()Lcom/fasterxml/jackson/core/json/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    :cond_0
    return-void
.end method

.method public S1(Lcom/fasterxml/jackson/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/h;->writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/m;)V

    :goto_0
    return-void
.end method

.method public T1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->p:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    return-void
.end method

.method public U0(Lcom/fasterxml/jackson/core/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/e;->F(Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->Y1(Ljava/lang/Object;)V

    return-void
.end method

.method public final V0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/e;->F(Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->Y1(Ljava/lang/Object;)V

    return-void
.end method

.method public W0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->b2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-void
.end method

.method public W1([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->d()V

    return-void
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    return v0
.end method

.method protected final X1(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/t$c;->c(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 4
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    :goto_0
    return-void
.end method

.method public Y0(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method protected final Y1(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/t;->q:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/t;->p:Ljava/lang/Object;

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/t$c;->f(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/util/t$c;->d(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    goto :goto_1

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 6
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    :goto_1
    return-void
.end method

.method public Z0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public a1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method protected final a2(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/t;->q:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/t;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/t$c;->e(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/t$c;->c(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    goto :goto_1

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 6
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    :goto_1
    return-void
.end method

.method public b1(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method protected final b2(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/t;->q:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/t;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/t$c;->e(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/t$c;->c(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 5
    iget p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    goto :goto_1

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 7
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    :goto_1
    return-void
.end method

.method public c1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method protected final c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->G()I

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/t;->q:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/t;->p:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/t$c;->f(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/t$c;->d(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 5
    iget p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    goto :goto_1

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 7
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    :goto_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->h:Z

    return-void
.end method

.method protected d()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d1(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public e1(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected e2(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2
    sget-object v3, Lcom/fasterxml/jackson/databind/util/t$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 3
    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/util/t;->f2(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v2, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/util/t;->V0(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->R0()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_4
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v2, :cond_5

    .line 9
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->G1()V

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->S0()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void

    .line 12
    :cond_7
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    if-eqz v2, :cond_8

    .line 13
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->d2(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->K1()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public f1(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public g2(Lcom/fasterxml/jackson/databind/util/t;)Lcom/fasterxml/jackson/databind/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/t;->D()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/t;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/t;->i2()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public bridge synthetic h0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->p2()Lcom/fasterxml/jackson/core/json/e;

    move-result-object v0

    return-object v0
.end method

.method public i2()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->k2(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t;->h:Z

    return v0
.end method

.method public j2(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 7

    .line 1
    new-instance v6, Lcom/fasterxml/jackson/databind/util/t$b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->m:Lcom/fasterxml/jackson/databind/util/t$c;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->s0()Lcom/fasterxml/jackson/core/h;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/t;->f:Lcom/fasterxml/jackson/core/f;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/t$b;-><init>(Lcom/fasterxml/jackson/databind/util/t$c;Lcom/fasterxml/jackson/core/h;ZZLcom/fasterxml/jackson/core/f;)V

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/databind/util/t$b;->H2(Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v6
.end method

.method public k2(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/databind/util/t$b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->m:Lcom/fasterxml/jackson/databind/util/t$c;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/t;->f:Lcom/fasterxml/jackson/core/f;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/t$b;-><init>(Lcom/fasterxml/jackson/databind/util/t$c;Lcom/fasterxml/jackson/core/h;ZZLcom/fasterxml/jackson/core/f;)V

    return-object v6
.end method

.method public l2()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->k2(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public m2(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/t;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->k1(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->K1()V

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, p1, :cond_2

    .line 7
    const-class v1, Lcom/fasterxml/jackson/databind/util/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT after copying contents of a JsonParser into TokenBuffer, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->S0()V

    return-object p0
.end method

.method public n2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->m:Lcom/fasterxml/jackson/databind/util/t$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/t$c;->r(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public o1(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->W0()V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, [B

    if-eq v0, v1, :cond_3

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/q;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/h;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 7
    :cond_3
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->c2(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public o2(Z)Lcom/fasterxml/jackson/databind/util/t;
    .locals 0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/t;->l:Z

    return-object p0
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

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator;->b:Lcom/fasterxml/jackson/core/util/f;

    return-object v0
.end method

.method public final p2()Lcom/fasterxml/jackson/core/json/e;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->s:Lcom/fasterxml/jackson/core/json/e;

    return-object v0
.end method

.method public q0(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q2()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/t;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->m:Lcom/fasterxml/jackson/databind/util/t$c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t;->n:Lcom/fasterxml/jackson/databind/util/t$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->q:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/t;->r:Z

    return-void
.end method

.method public r2(Lcom/fasterxml/jackson/core/f;)Lcom/fasterxml/jackson/databind/util/t;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->f:Lcom/fasterxml/jackson/core/f;

    return-object p0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s2(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t;->m:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 2
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/t;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/t$c;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    :goto_1
    add-int/2addr v5, v2

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/t$c;->l()Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/t$c;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    .line 6
    :cond_3
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->r(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    if-nez v6, :cond_4

    :goto_3
    return-void

    :cond_4
    if-eqz v4, :cond_6

    .line 7
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->h(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 8
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->r1(Ljava/lang/Object;)V

    .line 9
    :cond_5
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->i(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 10
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->T1(Ljava/lang/Object;)V

    .line 11
    :cond_6
    sget-object v7, Lcom/fasterxml/jackson/databind/util/t$a;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal error: should never end up through this code path"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->j(I)Ljava/lang/Object;

    move-result-object v6

    .line 14
    instance-of v7, v6, Lcom/fasterxml/jackson/databind/util/q;

    if-eqz v7, :cond_7

    .line 15
    check-cast v6, Lcom/fasterxml/jackson/databind/util/q;

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/databind/util/q;->c(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 16
    :cond_7
    instance-of v7, v6, Lcom/fasterxml/jackson/databind/f;

    if-eqz v7, :cond_8

    .line 17
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->o1(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->Q0(Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :pswitch_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    goto :goto_1

    .line 20
    :pswitch_2
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->O0(Z)V

    goto :goto_1

    .line 21
    :pswitch_3
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->O0(Z)V

    goto :goto_1

    .line 22
    :pswitch_4
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->j(I)Ljava/lang/Object;

    move-result-object v6

    .line 23
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_9

    .line 24
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->Y0(D)V

    goto :goto_1

    .line 25
    :cond_9
    instance-of v7, v6, Ljava/math/BigDecimal;

    if-eqz v7, :cond_a

    .line 26
    check-cast v6, Ljava/math/BigDecimal;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->d1(Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    .line 27
    :cond_a
    instance-of v7, v6, Ljava/lang/Float;

    if-eqz v7, :cond_b

    .line 28
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->Z0(F)V

    goto/16 :goto_1

    :cond_b
    if-nez v6, :cond_c

    .line 29
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    goto/16 :goto_1

    .line 30
    :cond_c
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 31
    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->c1(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    new-array v7, v2, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, "Unrecognized value type for VALUE_NUMBER_FLOAT: %s, cannot serialize"

    .line 33
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :pswitch_5
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->j(I)Ljava/lang/Object;

    move-result-object v6

    .line 35
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_e

    .line 36
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->a1(I)V

    goto/16 :goto_1

    .line 37
    :cond_e
    instance-of v7, v6, Ljava/math/BigInteger;

    if-eqz v7, :cond_f

    .line 38
    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->e1(Ljava/math/BigInteger;)V

    goto/16 :goto_1

    .line 39
    :cond_f
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_10

    .line 40
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->b1(J)V

    goto/16 :goto_1

    .line 41
    :cond_10
    instance-of v7, v6, Ljava/lang/Short;

    if-eqz v7, :cond_11

    .line 42
    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->f1(S)V

    goto/16 :goto_1

    .line 43
    :cond_11
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->a1(I)V

    goto/16 :goto_1

    .line 44
    :pswitch_6
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->j(I)Ljava/lang/Object;

    move-result-object v6

    .line 45
    instance-of v7, v6, Lcom/fasterxml/jackson/core/j;

    if-eqz v7, :cond_12

    .line 46
    check-cast v6, Lcom/fasterxml/jackson/core/j;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->N1(Lcom/fasterxml/jackson/core/j;)V

    goto/16 :goto_1

    .line 47
    :cond_12
    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->P1(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 48
    :pswitch_7
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/t$c;->j(I)Ljava/lang/Object;

    move-result-object v6

    .line 49
    instance-of v7, v6, Lcom/fasterxml/jackson/core/j;

    if-eqz v7, :cond_13

    .line 50
    check-cast v6, Lcom/fasterxml/jackson/core/j;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->U0(Lcom/fasterxml/jackson/core/j;)V

    goto/16 :goto_1

    .line 51
    :cond_13
    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 52
    :pswitch_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->R0()V

    goto/16 :goto_1

    .line 53
    :pswitch_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    goto/16 :goto_1

    .line 54
    :pswitch_a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->S0()V

    goto/16 :goto_1

    .line 55
    :pswitch_b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t0(II)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->X()I

    move-result v0

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TokenBuffer: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->i2()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/t;->i:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/t;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 5
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x64

    if-nez v4, :cond_3

    if-lt v3, v5, :cond_2

    const-string v1, " ... (truncated "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x5d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    .line 9
    :try_start_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/t;->Z1(Ljava/lang/StringBuilder;)V

    :cond_4
    if-ge v3, v5, :cond_6

    if-lez v3, :cond_5

    const-string v5, ", "

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_6

    const/16 v4, 0x28

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public v0(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t;->e:Lcom/fasterxml/jackson/core/h;

    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/e;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public w1(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->d()V

    return-void
.end method

.method public x0(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t;->g:I

    return-object p0
.end method

.method public x1(Lcom/fasterxml/jackson/core/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->d()V

    return-void
.end method

.method public y1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->d()V

    return-void
.end method

.method public z1(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t;->d()V

    return-void
.end method
