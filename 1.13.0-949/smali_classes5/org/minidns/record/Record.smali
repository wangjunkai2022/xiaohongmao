.class public final Lorg/minidns/record/Record;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/record/Record$CLASS;,
        Lorg/minidns/record/Record$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/minidns/record/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/minidns/dnsname/DnsName;

.field public final b:Lorg/minidns/record/Record$TYPE;

.field public final c:Lorg/minidns/record/Record$CLASS;

.field public final d:I

.field public final e:J

.field public final f:Lorg/minidns/record/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public final g:Z

.field private h:[B

.field private transient i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/h;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/minidns/record/Record$TYPE;",
            "IJTD;)V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    sget-object v3, Lorg/minidns/record/Record$CLASS;->NONE:Lorg/minidns/record/Record$CLASS;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/h;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;JLorg/minidns/record/h;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "JTD;Z)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;JLorg/minidns/record/h;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/h;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "IJTD;)V"
        }
    .end annotation

    .line 4
    sget-object v3, Lorg/minidns/record/Record$CLASS;->NONE:Lorg/minidns/record/Record$CLASS;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/h;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "IJTD;Z)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    .line 7
    iput-object p2, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    .line 8
    iput-object p3, p0, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    .line 9
    iput p4, p0, Lorg/minidns/record/Record;->d:I

    .line 10
    iput-wide p5, p0, Lorg/minidns/record/Record;->e:J

    .line 11
    iput-object p7, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    .line 12
    iput-boolean p8, p0, Lorg/minidns/record/Record;->g:Z

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;JLorg/minidns/record/h;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "JTD;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/minidns/record/Record$CLASS;->getValue()I

    move-result v0

    if-eqz p7, :cond_0

    const v1, 0x8000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v5, v0, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/h;Z)V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/minidns/record/h;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {v0, p0, p1}, Lorg/minidns/record/Record;->b(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static b(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/minidns/record/h;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "TE;>;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/Record;

    .line 2
    invoke-virtual {v0, p1}, Lorg/minidns/record/Record;->g(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "[B)",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 3
    invoke-static {v0}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    and-int/lit16 v0, v4, 0x7fff

    .line 5
    invoke-static {v0}, Lorg/minidns/record/Record$CLASS;->getClass(I)Lorg/minidns/record/Record$CLASS;

    move-result-object v3

    const v0, 0x8000

    and-int/2addr v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v5, v0

    const/16 v0, 0x10

    shl-long/2addr v5, v0

    .line 7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v5, v9

    .line 8
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 9
    sget-object v7, Lorg/minidns/record/Record$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 10
    invoke-static {p0, v0, v2}, Lorg/minidns/record/w;->g(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)Lorg/minidns/record/w;

    move-result-object p0

    goto/16 :goto_1

    .line 11
    :pswitch_0
    invoke-static {p0, v0}, Lorg/minidns/record/d;->l(Ljava/io/DataInputStream;I)Lorg/minidns/record/d;

    move-result-object p0

    goto/16 :goto_1

    .line 12
    :pswitch_1
    invoke-static {p0, v0}, Lorg/minidns/record/o;->i(Ljava/io/DataInputStream;I)Lorg/minidns/record/o;

    move-result-object p0

    goto :goto_1

    .line 13
    :pswitch_2
    invoke-static {p0, v0}, Lorg/minidns/record/TLSA;->m(Ljava/io/DataInputStream;I)Lorg/minidns/record/TLSA;

    move-result-object p0

    goto :goto_1

    .line 14
    :pswitch_3
    invoke-static {p0}, Lorg/minidns/record/m;->h(Ljava/io/DataInputStream;)Lorg/minidns/record/m;

    move-result-object p0

    goto :goto_1

    .line 15
    :pswitch_4
    invoke-static {p0, v0}, Lorg/minidns/record/NSEC3;->h(Ljava/io/DataInputStream;I)Lorg/minidns/record/NSEC3;

    move-result-object p0

    goto :goto_1

    .line 16
    :pswitch_5
    invoke-static {p0, p1, v0}, Lorg/minidns/record/n;->h(Ljava/io/DataInputStream;[BI)Lorg/minidns/record/n;

    move-result-object p0

    goto :goto_1

    .line 17
    :pswitch_6
    invoke-static {p0, v0}, Lorg/minidns/record/g;->l(Ljava/io/DataInputStream;I)Lorg/minidns/record/g;

    move-result-object p0

    goto :goto_1

    .line 18
    :pswitch_7
    invoke-static {p0, p1, v0}, Lorg/minidns/record/r;->g(Ljava/io/DataInputStream;[BI)Lorg/minidns/record/r;

    move-result-object p0

    goto :goto_1

    .line 19
    :pswitch_8
    invoke-static {p0, v0}, Lorg/minidns/record/f;->n(Ljava/io/DataInputStream;I)Lorg/minidns/record/f;

    move-result-object p0

    goto :goto_1

    .line 20
    :pswitch_9
    invoke-static {p0, v0}, Lorg/minidns/record/p;->g(Ljava/io/DataInputStream;I)Lorg/minidns/record/p;

    move-result-object p0

    goto :goto_1

    .line 21
    :pswitch_a
    invoke-static {p0, v0}, Lorg/minidns/record/v;->k(Ljava/io/DataInputStream;I)Lorg/minidns/record/v;

    move-result-object p0

    goto :goto_1

    .line 22
    :pswitch_b
    invoke-static {p0, p1}, Lorg/minidns/record/q;->h(Ljava/io/DataInputStream;[B)Lorg/minidns/record/q;

    move-result-object p0

    goto :goto_1

    .line 23
    :pswitch_c
    invoke-static {p0, p1}, Lorg/minidns/record/e;->h(Ljava/io/DataInputStream;[B)Lorg/minidns/record/e;

    move-result-object p0

    goto :goto_1

    .line 24
    :pswitch_d
    invoke-static {p0, p1}, Lorg/minidns/record/c;->h(Ljava/io/DataInputStream;[B)Lorg/minidns/record/c;

    move-result-object p0

    goto :goto_1

    .line 25
    :pswitch_e
    invoke-static {p0, p1}, Lorg/minidns/record/l;->h(Ljava/io/DataInputStream;[B)Lorg/minidns/record/l;

    move-result-object p0

    goto :goto_1

    .line 26
    :pswitch_f
    invoke-static {p0}, Lorg/minidns/record/a;->i(Ljava/io/DataInputStream;)Lorg/minidns/record/a;

    move-result-object p0

    goto :goto_1

    .line 27
    :pswitch_10
    invoke-static {p0}, Lorg/minidns/record/b;->i(Ljava/io/DataInputStream;)Lorg/minidns/record/b;

    move-result-object p0

    goto :goto_1

    .line 28
    :pswitch_11
    invoke-static {p0, p1}, Lorg/minidns/record/k;->g(Ljava/io/DataInputStream;[B)Lorg/minidns/record/k;

    move-result-object p0

    goto :goto_1

    .line 29
    :pswitch_12
    invoke-static {p0, p1}, Lorg/minidns/record/u;->h(Ljava/io/DataInputStream;[B)Lorg/minidns/record/u;

    move-result-object p0

    goto :goto_1

    .line 30
    :pswitch_13
    invoke-static {p0, p1}, Lorg/minidns/record/t;->g(Ljava/io/DataInputStream;[B)Lorg/minidns/record/t;

    move-result-object p0

    :goto_1
    move-object v7, p0

    .line 31
    new-instance p0, Lorg/minidns/record/Record;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/h;Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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


# virtual methods
.method public c()Lorg/minidns/record/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    return-object v0
.end method

.method public d()Lorg/minidns/dnsmessage/a;
    .locals 4

    .line 1
    sget-object v0, Lorg/minidns/record/Record$a;->a:[I

    iget-object v1, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/minidns/dnsmessage/a;

    iget-object v1, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v2, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    iget-object v3, p0, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, v1, v2, v3}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    check-cast v0, Lorg/minidns/record/r;

    .line 4
    new-instance v1, Lorg/minidns/dnsmessage/a;

    iget-object v2, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v0, v0, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    iget-object v3, p0, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v1, v2, v0, v3}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/minidns/record/Record;->d()Lorg/minidns/dnsmessage/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/minidns/dnsmessage/a;->a()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/minidns/record/Record;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lorg/minidns/record/Record;

    .line 3
    iget-object v2, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v3, p1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, v3}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    iget-object v3, p1, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    iget-object v3, p1, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    iget-object p1, p1, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    invoke-virtual {v2, p1}, Lorg/minidns/record/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lorg/minidns/record/Record;->e:J

    return-wide v0
.end method

.method public g(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/minidns/record/h;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/minidns/record/Record<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    invoke-static {v0}, Lorg/minidns/record/Record$TYPE;->a(Lorg/minidns/record/Record$TYPE;)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lorg/minidns/dnsmessage/a;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    iget-object v1, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/minidns/record/Record$TYPE;->ANY:Lorg/minidns/record/Record$TYPE;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p1, Lorg/minidns/dnsmessage/a;->c:Lorg/minidns/record/Record$CLASS;

    iget-object v1, p0, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/minidns/record/Record$CLASS;->ANY:Lorg/minidns/record/Record$CLASS;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p1, p1, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    iget-object v0, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    .line 2
    invoke-virtual {p1, v0}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->hashCode()I

    move-result v0

    const/16 v1, 0x25

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v2, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v2, p0, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    invoke-virtual {v1}, Lorg/minidns/record/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/Record;->i:Ljava/lang/Integer;

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/Record;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lorg/minidns/record/Record;->g:Z

    return v0
.end method

.method public k()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->h:[B

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1}, Lorg/minidns/dnsname/DnsName;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    invoke-virtual {v2}, Lorg/minidns/record/h;->b()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/minidns/record/Record;->l(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/Record;->h:[B

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/minidns/record/Record;->h:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public l(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 3
    iget-object v0, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0}, Lorg/minidns/record/Record$TYPE;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    iget v0, p0, Lorg/minidns/record/Record;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5
    iget-wide v0, p0, Lorg/minidns/record/Record;->e:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    invoke-virtual {v0}, Lorg/minidns/record/h;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 7
    iget-object v0, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    invoke-virtual {v0, p1}, Lorg/minidns/record/h;->f(Ljava/io/DataOutputStream;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Empty Record has no byte representation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1}, Lorg/minidns/dnsname/DnsName;->getRawAce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/record/Record;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/Record;->f:Lorg/minidns/record/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
