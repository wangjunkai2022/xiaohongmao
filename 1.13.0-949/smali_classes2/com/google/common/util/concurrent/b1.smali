.class public final Lcom/google/common/util/concurrent/b1;
.super Ljava/lang/Object;
.source "Runnables.java"


# annotations
.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/b1$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/b1$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/b1;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/b1;->a:Ljava/lang/Runnable;

    return-object v0
.end method
