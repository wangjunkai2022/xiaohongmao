.class public Lc2/e$a;
.super Ljava/lang/Object;
.source "JsonPOJOBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc2/e;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lc2/e;->buildMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lc2/e;->withPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lc2/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc2/e$a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lc2/e$a;->b:Ljava/lang/String;

    return-void
.end method