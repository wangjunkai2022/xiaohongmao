.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;
.super Lcom/googlecode/mp4parser/c;
.source "SampleGroupDescriptionBox.java"


# static fields
.field private static final synthetic A:Lorg/aspectj/lang/c$b; = null

.field public static final t:Ljava/lang/String; = "sgpd"

.field private static final synthetic u:Lorg/aspectj/lang/c$b;

.field private static final synthetic v:Lorg/aspectj/lang/c$b;

.field private static final synthetic w:Lorg/aspectj/lang/c$b;

.field private static final synthetic x:Lorg/aspectj/lang/c$b;

.field private static final synthetic y:Lorg/aspectj/lang/c$b;

.field private static final synthetic z:Lorg/aspectj/lang/c$b;


# instance fields
.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "sgpd"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    return-void
.end method

.method private static synthetic s()V
    .locals 10

    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;

    const-string v1, "SampleGroupDescriptionBox.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getDefaultLength"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x91

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->u:Lorg/aspectj/lang/c$b;

    const-string v1, "1"

    const-string v2, "setDefaultLength"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, "int"

    const-string v5, "defaultLength"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const/16 v1, 0x95

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->v:Lorg/aspectj/lang/c$b;

    const-string v1, "1"

    const-string v2, "getGroupEntries"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const/16 v1, 0x99

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->w:Lorg/aspectj/lang/c$b;

    const-string v1, "1"

    const-string v2, "setGroupEntries"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, "java.util.List"

    const-string v5, "groupEntries"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const/16 v1, 0x9d

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->x:Lorg/aspectj/lang/c$b;

    const-string v1, "1"

    const-string v2, "equals"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, "java.lang.Object"

    const-string v5, "o"

    const-string v6, ""

    const-string v7, "boolean"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->y:Lorg/aspectj/lang/c$b;

    const-string v1, "1"

    const-string v2, "hashCode"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const/16 v1, 0xb7

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->z:Lorg/aspectj/lang/c$b;

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk8/t;

    move-result-object v0

    const/16 v1, 0xbf

    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->A:Lorg/aspectj/lang/c$b;

    return-void
.end method

.method private x(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
    .locals 1

    const-string v0, "roll"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;

    invoke-direct {p2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/d;-><init>()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "rash"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;

    invoke-direct {p2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;-><init>()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "seig"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-direct {p2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;-><init>()V

    goto :goto_0

    :cond_2
    const-string v0, "rap "

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/i;

    invoke-direct {p2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/i;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "tele"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;

    invoke-direct {p2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/g;-><init>()V

    goto :goto_0

    :cond_4
    const-string v0, "sync"

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance p2, Lcom/mp4parser/iso14496/part15/g;

    invoke-direct {p2}, Lcom/mp4parser/iso14496/part15/g;-><init>()V

    goto :goto_0

    :cond_5
    const-string v0, "tscl"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    new-instance p2, Lcom/mp4parser/iso14496/part15/h;

    invoke-direct {p2}, Lcom/mp4parser/iso14496/part15/h;-><init>()V

    goto :goto_0

    :cond_6
    const-string v0, "tsas"

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    new-instance p2, Lcom/mp4parser/iso14496/part15/i;

    invoke-direct {p2}, Lcom/mp4parser/iso14496/part15/i;-><init>()V

    goto :goto_0

    :cond_7
    const-string v0, "stsa"

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    new-instance p2, Lcom/mp4parser/iso14496/part15/f;

    invoke-direct {p2}, Lcom/mp4parser/iso14496/part15/f;-><init>()V

    goto :goto_0

    .line 19
    :cond_8
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;

    invoke-direct {v0, p2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/h;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 20
    :goto_0
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->c(Ljava/nio/ByteBuffer;)V

    return-object p2
.end method


# virtual methods
.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->t(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    return-void

    .line 7
    :cond_1
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    .line 8
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 9
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    if-nez v3, :cond_2

    .line 10
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result v2

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    invoke-direct {p0, v6, v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->x(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-wide v2, v4

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This should be implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SampleGroupDescriptionBox are only supported in version 1"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/f;->J(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 6
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 7
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 9
    :cond_2
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected e()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v2, 0xc

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x8

    :goto_0
    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    return-wide v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    move-result v7

    if-ne v7, v1, :cond_2

    iget v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    if-nez v7, :cond_2

    add-long/2addr v2, v4

    .line 4
    :cond_2
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->d()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->y:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;

    .line 4
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    if-eq v2, v3, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->z:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 2
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    const/4 v1, 0x0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->A:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SampleGroupDescriptionBox{groupingType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "????"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", defaultLength="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupEntries="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 2

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->u:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->w:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    return-object v0
.end method

.method public y(I)V
    .locals 2

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->v:Lorg/aspectj/lang/c$b;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->r:I

    return-void
.end method

.method public z(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->x:Lorg/aspectj/lang/c$b;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->s:Ljava/util/List;

    return-void
.end method
