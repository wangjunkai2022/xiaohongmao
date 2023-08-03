.class Lorg/aspectj/runtime/reflect/h$a;
.super Lorg/aspectj/runtime/reflect/h$b;
.source "JoinPointImpl.java"

# interfaces
.implements Lorg/aspectj/lang/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/runtime/reflect/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lk8/z;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/aspectj/runtime/reflect/h$b;-><init>(ILjava/lang/String;Lorg/aspectj/lang/e;Lk8/z;)V

    return-void
.end method
