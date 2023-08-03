.class Lcom/google/common/collect/s3$b;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/s3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/s3$a;

    invoke-direct {v0}, Lcom/google/common/collect/s3$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/s3$b;->a:Lcom/google/common/collect/s3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
