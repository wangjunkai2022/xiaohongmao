.class final Lshaded/org/apache/commons/codec/language/bm/f$f;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lshaded/org/apache/commons/codec/language/bm/f$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshaded/org/apache/commons/codec/language/bm/f;->t(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/f$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f$f;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lshaded/org/apache/commons/codec/language/bm/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
