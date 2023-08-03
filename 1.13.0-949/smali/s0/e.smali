.class public Ls0/e;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Ls0/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final b:Ls0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls0/e;

    invoke-direct {v0}, Ls0/e;-><init>()V

    sput-object v0, Ls0/e;->b:Ls0/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls0/e;
    .locals 1

    sget-object v0, Ls0/e;->b:Ls0/e;

    return-object v0
.end method


# virtual methods
.method public now()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
