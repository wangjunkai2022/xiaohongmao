.class final enum Lcom/facebook/imagepipeline/animated/impl/d$c;
.super Ljava/lang/Enum;
.source "AnimatedImageCompositor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/animated/impl/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/imagepipeline/animated/impl/d$c;

.field public static final enum b:Lcom/facebook/imagepipeline/animated/impl/d$c;

.field public static final enum c:Lcom/facebook/imagepipeline/animated/impl/d$c;

.field public static final enum d:Lcom/facebook/imagepipeline/animated/impl/d$c;

.field private static final synthetic e:[Lcom/facebook/imagepipeline/animated/impl/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/d$c;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/d$c;->a:Lcom/facebook/imagepipeline/animated/impl/d$c;

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/d$c;

    const-string v3, "NOT_REQUIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/imagepipeline/animated/impl/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/imagepipeline/animated/impl/d$c;->b:Lcom/facebook/imagepipeline/animated/impl/d$c;

    .line 3
    new-instance v3, Lcom/facebook/imagepipeline/animated/impl/d$c;

    const-string v5, "SKIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/imagepipeline/animated/impl/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/imagepipeline/animated/impl/d$c;->c:Lcom/facebook/imagepipeline/animated/impl/d$c;

    .line 4
    new-instance v5, Lcom/facebook/imagepipeline/animated/impl/d$c;

    const-string v7, "ABORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/imagepipeline/animated/impl/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/imagepipeline/animated/impl/d$c;->d:Lcom/facebook/imagepipeline/animated/impl/d$c;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/imagepipeline/animated/impl/d$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/facebook/imagepipeline/animated/impl/d$c;->e:[Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/impl/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/facebook/imagepipeline/animated/impl/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/animated/impl/d$c;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/d$c;->e:[Lcom/facebook/imagepipeline/animated/impl/d$c;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/animated/impl/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-object v0
.end method
