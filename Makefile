CC     ?= xcrun -sdk iphoneos clang
CFLAGS ?= -arch arm64 -arch armv6 -miphoneos-version-min=6.0
LDID   ?= ldid

plutil:
	$(CC) $(CFLAGS) -o plutil json-framework/Classes/*.m plutil.m iphone-3.0-cookbook-/C16-Push/02-PushUtil/JSONHelper.m -framework Foundation

clean:
	rm -f plutil
