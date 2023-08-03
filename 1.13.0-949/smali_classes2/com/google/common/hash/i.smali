.class final Lcom/google/common/hash/i;
.super Lcom/google/common/hash/c;
.source "Crc32cHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/i$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/hash/i;

    invoke-direct {v0}, Lcom/google/common/hash/i;-><init>()V

    sput-object v0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/m;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public h()Lcom/google/common/hash/n;
    .locals 1

    new-instance v0, Lcom/google/common/hash/i$a;

    invoke-direct {v0}, Lcom/google/common/hash/i$a;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
