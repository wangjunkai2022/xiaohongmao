.class public final Lcom/fasterxml/jackson/core/json/f;
.super Ljava/lang/Object;
.source "PackageVersion.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/n;


# static fields
.field public static final a:Lcom/fasterxml/jackson/core/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "2.13.3"

    const-string v1, "com.fasterxml.jackson.core"

    const-string v2, "jackson-core"

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/util/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/f;->a:Lcom/fasterxml/jackson/core/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/json/f;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
