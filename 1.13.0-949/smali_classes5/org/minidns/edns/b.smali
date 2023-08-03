.class public Lorg/minidns/edns/b;
.super Lorg/minidns/edns/a;
.source "Nsid.java"


# static fields
.field public static final f:Lorg/minidns/edns/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/minidns/edns/b;

    invoke-direct {v0}, Lorg/minidns/edns/b;-><init>()V

    sput-object v0, Lorg/minidns/edns/b;->f:Lorg/minidns/edns/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    invoke-direct {p0, v0}, Lorg/minidns/edns/b;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/edns/a;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/minidns/edns/a;->c:[B

    invoke-static {v0}, Lorg/minidns/util/f;->a([B)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/minidns/edns/Edns$OptionCode;
    .locals 1

    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    return-object v0
.end method

.method protected e()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/minidns/edns/a;->c:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
