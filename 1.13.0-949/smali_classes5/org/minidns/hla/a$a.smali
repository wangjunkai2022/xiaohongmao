.class Lorg/minidns/hla/a$a;
.super Ljava/lang/Object;
.source "DnssecResolverApi.java"

# interfaces
.implements Lorg/minidns/cache/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/hla/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/minidns/a;
    .locals 1

    new-instance v0, Lorg/minidns/cache/c;

    invoke-direct {v0}, Lorg/minidns/cache/c;-><init>()V

    return-object v0
.end method
