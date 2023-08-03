.class Lorg/minidns/cache/c$a;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/cache/c;-><init>(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/minidns/dnsmessage/DnsMessage;",
        "Lorg/minidns/dnsmessage/DnsMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/minidns/cache/c;


# direct methods
.method constructor <init>(Lorg/minidns/cache/c;IFZI)V
    .locals 0

    iput-object p1, p0, Lorg/minidns/cache/c$a;->b:Lorg/minidns/cache/c;

    iput p5, p0, Lorg/minidns/cache/c$a;->a:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget v0, p0, Lorg/minidns/cache/c$a;->a:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
