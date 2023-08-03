.class final Lcom/google/common/reflect/TypeToken$h;
.super Lcom/google/common/reflect/TypeToken;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeToken<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:J


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/TypeToken$a;)V

    return-void
.end method
