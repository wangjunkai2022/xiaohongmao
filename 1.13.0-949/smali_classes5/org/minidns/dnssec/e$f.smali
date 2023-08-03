.class public Lorg/minidns/dnssec/e$f;
.super Lorg/minidns/dnssec/e;
.source "UnverifiedReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/minidns/dnssec/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "No secure entry point was found for the root zone (\"Did you forget to configure a root SEP?\")"

    return-object v0
.end method
