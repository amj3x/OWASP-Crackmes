.class public Lsg/vantagepoint/uncrackable3/CodeCheck;
.super Ljava/lang/Object;
.source "CodeCheck.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CodeCheck"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native bar([B)Z
.end method


# virtual methods
.method public check_code(Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lsg/vantagepoint/uncrackable3/CodeCheck;->bar([B)Z

    move-result p1

    return p1
.end method
