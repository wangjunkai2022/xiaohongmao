.class public Lcom/facebook/imagepipeline/core/o;
.super Ljava/lang/Object;
.source "NativeCodeSetup.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/imagepipeline/core/o;->a:Z

    return v0
.end method

.method public static b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useNativeCode"
        }
    .end annotation

    sput-boolean p0, Lcom/facebook/imagepipeline/core/o;->a:Z

    return-void
.end method
